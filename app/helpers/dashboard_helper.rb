module DashboardHelper
    def retain_submitted_amount(type)
        return @totals.values.sum if type.downcase == 'pending'
        @totals["#{type}"] || 0
    end

    def status_retainer(bill)
        if bill.status.downcase == 'pending'
            safe_join([
                button_to('Approve', approve_bill_path(bill.id), method: :post, data: {turbo_method: :post}, class:'approve-bill'),
                button_to('Reject', reject_bill_path(bill.id), method: :post, data: {turbo_method: :post}, class:'reject-bill')
            ], ' ')
        elsif bill.status.downcase == 'approved'
            button_to 'Reject', reject_bill_path(bill.id), method: :post, data: {turbo_method: :post}, class:'reject-bill'
        elsif bill.status.downcase == 'rejected'
            button_to 'Approve', approve_bill_path(bill.id), method: :post, data: {turbo_method: :post}, class:'approve-bill'
        end
    end
end
