prawn_document do |pdf|
  pdf.text 'Listando Assuntos', :align => :center, :size => 20
  pdf.move_down 20
  pdf.table @subjects.collect { |subject| [subject.id, subject.description] }
end