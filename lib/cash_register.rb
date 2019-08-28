
class CashRegister

attr_accessor :total, :discount

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def total
        @total
    end

    def add_item(title, price, quantity=1)
        if quantity>1
            i=0
            while i<quantity
            @items << title
            i += 1
            end
        else
            @items << title
        end
        @items.push(title)*quantity
        @total += price * quantity
    end

    def apply_discount
        if @discount == 0
            "There is no discount to apply."
        else
            @total = @total * (100 - @discount)
            "After the discount, the total comes to #{@total.to_i}."
        @total
        end
    end

    def items
        @items
    end

end