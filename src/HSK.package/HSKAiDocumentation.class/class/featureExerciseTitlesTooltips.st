initiatives
featureExerciseTitlesTooltips
	^ '# Initiative: Exercise titles and tooltips

## Repository
ChineseCharacters (Iceberg)

## Project
HSK

## Branch
feature/exercise-titles-tooltips

## Goal
Each exercise in the HSK project displays a **title** and a **tooltip** explaining what the exercise is about. The usage interface must be in English.

## Tasks
1. Define a title and an explanatory tooltip for each exercise type, exposed to the UI. (DONE - accepted)
2. Display the title of each exercise in the interface. (DONE - accepted)
3. Display the explanatory tooltip of each exercise in the interface. (DONE - accepted)

## State
- First commit (7cb1f80): class-side `title`/`explanation` on HSKReminderPage/HSKQuizPage; English titles + tooltips on the exercise menu buttons and inside HSKReminderView/HSKQuizView; black-box HSKExerciseTitlesTest (6 green).
- Refactoring commit (accepted by user):
  - A) Removed dead code from HSKDesktopShell: buildExercises, exercisePaneFor:, buildReminderView, buildQuizView, quizOptionButtonFor:answering:redrawing:, buildHeader.
  - B) Menu manifest: HSKDesktopShell class>>menuEntries (4 entries {id. title. tooltip. selector}); buildMenu builds one button per entry; all four menu buttons have tooltips now.
  - C) New abstract superclass HSKExerciseView (ToPane, slots page/factory): initialize (vertical+matchParent), initializeWidgets = removeChildren + addTitleAndTooltip; HSKReminderView/HSKQuizView subclass it and call super initializeWidgets.
  - Grey-box HSKExerciseViewTest (6 green); black-box HSKExerciseTitlesTest (6 green); HSKDesktopShellTest fixed to real ids: 13/13 green via suite run - the pre-existing "suite run shows 2 errors" bug was caused by phantom-id tests and is now fixed.
  - Pending: update HSKAiDocumentation + commit documentation (4.l/4.m). DONE in this commit.
- Session 2 pending: none explicitly; initiative goal reached and accepted.'