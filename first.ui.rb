=begin
** Form generated from reading ui file 'first.ui'
**
** Created: Sun Jan 25 02:53:12 2015
**      by: Qt User Interface Compiler version 4.8.6
**
** WARNING! All changes made in this file will be lost when recompiling ui file!
=end

require 'Qt4'

class Ui_Dialog
    attr_reader :buttonBox
    attr_reader :pushButton1

    def setupUi(dialog)
    if dialog.objectName.nil?
        dialog.objectName = "dialog"
    end
    dialog.resize(400, 300)
    @buttonBox = Qt::DialogButtonBox.new(dialog)
    @buttonBox.objectName = "buttonBox"
    @buttonBox.geometry = Qt::Rect.new(30, 240, 341, 32)
    @buttonBox.orientation = Qt::Horizontal
    @buttonBox.standardButtons = Qt::DialogButtonBox::Cancel|Qt::DialogButtonBox::Ok
    @pushButton1 = Qt::PushButton.new(dialog)
    @pushButton1.objectName = "pushButton1"
    @pushButton1.geometry = Qt::Rect.new(90, 50, 110, 32)

    retranslateUi(dialog)
    Qt::Object.connect(@buttonBox, SIGNAL('accepted()'), dialog, SLOT('accept()'))
    Qt::Object.connect(@buttonBox, SIGNAL('rejected()'), dialog, SLOT('reject()'))

    Qt::MetaObject.connectSlotsByName(dialog)
    end # setupUi

    def setup_ui(dialog)
        setupUi(dialog)
    end

    def retranslateUi(dialog)
    dialog.windowTitle = Qt::Application.translate("Dialog", "Dialog", nil, Qt::Application::UnicodeUTF8)
    @pushButton1.text = Qt::Application.translate("Dialog", "PushButton", nil, Qt::Application::UnicodeUTF8)
    end # retranslateUi

    def retranslate_ui(dialog)
        retranslateUi(dialog)
    end

end

module Ui
    class Dialog < Ui_Dialog
    end
end  # module Ui

if $0 == __FILE__
    a = Qt::Application.new(ARGV)
    u = Ui_Dialog.new
    w = Qt::Dialog.new
    u.setupUi(w)
    w.show
    a.exec
end
