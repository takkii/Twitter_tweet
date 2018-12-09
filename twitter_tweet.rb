#!/usr/bin/env ruby
# frozen_string_literal: true

# vim: filetype=ruby

module Tubuyaki
  def version
    eval "print 'Twitter_Tubuyaki Version : '"
    eval "puts '0.1.0'"
  end

  def start
    eval "puts '取扱説明書'.center(60,'-')"
    eval "puts '

    < 使い方 >

    Twitter_Tubuyaki = ruby twitter_tweet.rb

    >Twitter_Tubuyaki
    　∟Twitter_Tubuyakiを起動します
    　
    >Ruby/Tkより2フレーム出力されます

    ・つぶやくフォーム
    ・Twitterのユーザプロフィール

    >Twitter_Tubuyaki -v
    　∟Twitter_Tubuyakiのバージョンを表示します

    バージョンの仕様
    　
    　(0.0.1~) ... tubuyaki + tubuyaki_gui
    　(0.1.0~) ... Twitter_Tubuyaki

    >Twitter_Tubuyaki -h
    　∟Twitter_Tubuyakiのヘルプを表示します

    < ライセンス >

    Twitter_TubuyakiはMITライセンスです

    '"
    eval "puts''"
    eval "puts '取扱説明書'.center(60,'-')"
  end

  def soft
    #  Copyright © 2017 Takayuki, Kamiyama

    require 'tk'
    require 'twitter'
    require 'kconv'

    client = Twitter::REST::Client.new do |config|
     config.consumer_key        = ''
     config.consumer_secret     = ''
     config.access_token        = ''
     config.access_token_secret = ''
    end

    window = TkRoot.new do
      title 'Twitter_Tubuyaki'
      resizable [0, 0]
    end

    window1 = TkToplevel.new do
      title 'Twitter Tweet parts.'
    end

    TkLabel.new(nil,
                text: 'Twitter Tweet ...',
                fg: 'blue').pack

    entry = TkEntry.new.pack('side' => 'left')

    c = TkButton.new(:text => "投稿する").pack('fill'=>'x',"padx" => 2.5,"pady" => 2.5)

    c.command proc {
      saikoro = Random.rand(6)

      case saikoro

      when 4 then
        TkLabel.new(window1,
                    text: client.update(entry.value.to_s.toutf8),
                    fg: 'white',
                    bg: 'blue').pack('fill' => 'x', 'padx' => 2.5, 'pady' => 2.5)
      when 3 then
        TkLabel.new(window1,
                    text: client.update(entry.value.to_s.toutf8),
                    fg: 'black',
                    bg: 'yellow').pack('fill' => 'x', 'padx' => 2.5, 'pady' => 2.5)
      when 2 then
        TkLabel.new(window1,
                    text: client.update(entry.value.to_s.toutf8),
                    fg: 'black',
                    bg: 'white').pack('fill' => 'x', 'padx' => 2.5, 'pady' => 2.5)
      when 1 then
        TkLabel.new(window1,
                    text: client.update(entry.value.to_s.toutf8),
                    fg: 'white',
                    bg: 'black').pack('fill' => 'x', 'padx' => 2.5, 'pady' => 2.5)
      when 0 then
        TkLabel.new(window1,
                    text: client.update(entry.value.to_s.toutf8),
                    fg: 'black',
                    bg: 'green').pack('fill' => 'x', 'padx' => 2.5, 'pady' => 2.5)
      else
        TkLabel.new(window1,
                    text: client.update(entry.value.to_s.toutf8),
                    fg: 'white',
                    bg: 'red').pack('fill' => 'x', 'padx' => 2.5, 'pady' => 2.5)
      end
    }

    TkLabel.new(window1,
                text: ("アカウント名 : @#{client.user.screen_name} \n".toutf8 + "Twitter ユーザ名 : #{client.user.name} \n".toutf8 + "プロフィール : #{client.user.description} \n".toutf8 + "Twitterでつぶやいた総数 : #{client.user.tweets_count} ".toutf8),
                fg: 'green',
                bg: 'blue').pack

    Tk.mainloop
  end

  module_function :soft, :version, :start
end

v = /\Aversion\z/
ve = /\A[-][v]\z/
h = /\Ahelp\z/
he = /\A[-][h]\z/

one = ARGV[0]

if one.nil?
  Tubuyaki.soft
elsif one.match?(v)
  Tubuyaki.version
elsif one.match?(ve)
  Tubuyaki.version
elsif one.match?(h)
  Tubuyaki.start
elsif one.match?(he)
  Tubuyaki.start
else
  eval "puts ''"
  eval "puts 'Please choose an option.'"
  eval "puts 'Dear my wife.'"
  eval "puts ''"
end
