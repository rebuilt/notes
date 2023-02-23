## Use the rails console to see what you're missing

include Rails.application.routes.url_helpers

presenter = SubcategoryPresenter.new(subcategory: Subcategory.first,academic_year: AcademicYear.first,school:
 School.first)

 url_for presenter

NoMethodError (private method `to_model' called for #<SubcategoryPresenter:0x0000558bcb6e52d8>)
Did you mean?  to_yaml

## Assets in development are dynamically precompiled.  Assets in test need to be compiled beforehand

scss file must not contain syntax errors
import bootstrap
