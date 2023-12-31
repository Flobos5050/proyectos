from django.db import models
from django.contrib.auth.models import User

class Customer (models.Model):
    user = models.OneToOneField(User, on_delete = models.CASCADE, null= True, blank = True)
    name = models.CharField(max_length=200, null=True)
    email = models.CharField(max_length=200, null=True)

    def _str_(self):
        return self.name
    
class Product(models.Model):
    name = models.CharField(max_length=200, null=True)
    price = models.FloatField()
    digital = models.BooleanField(default=False, null=True, blank=True)
   
    def _str_(self):
        return self.name

class Order(models.Model):
    customer = models.ForeignKey(Customer, on_delete = models.SET_NULL, null = True, blank= True)
    date_ordered = models.DateTimeField(auto_now_add=True)
    complete = models.BooleanField(default=False, null=True, blank=True)
    transaction_id =  models.CharField(max_length=200, null=True)
    def _str_(self):
        return str(self.id)
    
class OrderItem (models.Model):
    product = models.ForeignKey(Product, on_delete = models.SET_NULL, null = True, blank= True)
    order = models.ForeignKey(Order, on_delete = models.SET_NULL, null = True, blank= True)
    quantity= models.IntegerField(default= 0, null=True, blank=True)
    date_added = models.DateTimeField(auto_now_add=True)
    
class ShippingAdress (models.Model):
     customer = models.ForeignKey(Customer, on_delete = models.SET_NULL, null = True, blank= True)
     order = models.ForeignKey(Order, on_delete = models.SET_NULL, null = True, blank= True)
     addres =  models.CharField(max_length=200, null=True)
     city =  models.CharField(max_length=200, null=True)
     state =  models.CharField(max_length=200, null=True)
     zip =  models.CharField(max_length=200, null=True)
     date_added = models.DateTimeField(auto_now_add=True)
    
     def _str_(self):
        return self.addres