class OwnersController < ApplicationController
  get '/' do
    redirect '/owners'
  end

  get '/owners' do
    @owners = Owner.all
    erb :'/owners/index'
  end

  get '/owners/new' do
<<<<<<< HEAD
    @pets = Pet.all
=======
>>>>>>> 50e31d7ff6bba2167adc32e83f7d8545e4b78926
    erb :'/owners/new'
  end

  post '/owners' do
<<<<<<< HEAD
    @owner = Owner.create(params["owner"])
    if !params["pet"]["name"].empty?
      @owner.pets << Pet.create(name: params["pet"]["name"])
    end
    redirect "/owners/#{@owner.id}"
  end

  get '/owners/:id' do
=======
    @owner = Owner.create(params[:owner])
    if !params["pet"]["name"].empty?
      @owner.pets << Pet.create(name: params["pet"]["name"])
    end
    @owner.save
    redirect "owners/#{@owner.id}"
  end

  get '/owners/:id/edit' do
>>>>>>> 50e31d7ff6bba2167adc32e83f7d8545e4b78926
    @owner = Owner.find(params[:id])
    erb :'/owners/show'
  end

<<<<<<< HEAD
  get '/owners/:id/edit' do
    @pets = Pet.all
=======
  get '/owners/:id' do
>>>>>>> 50e31d7ff6bba2167adc32e83f7d8545e4b78926
    @owner = Owner.find(params[:id])
    erb :'/owners/edit'
  end

  patch '/owners/:id' do
  end
<<<<<<< HEAD
end
=======

  post '/owners/:id' do
    @owner = Owner.find(params[:id])
    @owner.update(params["owner"])
    if !params["pet"]["name"].empty?
      @owner.pets << Pet.create(name: params["pet"]["name"])
    end
    redirect "owners/#{@owner.id}"
  end
end

>>>>>>> 50e31d7ff6bba2167adc32e83f7d8545e4b78926
