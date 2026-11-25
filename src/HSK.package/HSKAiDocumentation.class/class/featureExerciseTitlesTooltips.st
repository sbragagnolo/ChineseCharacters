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
- First commit on the initiative branch:
  - `HSKReminderPage` / `HSKQuizPage`: class-side `title` and `explanation` (English), instance-side delegates with `self class`.
  - `HSKDesktopShell>>buildMenu`: menu buttons show English titles (Knowledge / Pinyin Reminder / Pinyin Quiz / Game); the two exercise buttons get `tooltipText:` with the page explanation.
  - `HSKReminderView>>initializeWidgets` / `HSKQuizView>>initializeWidgets`: title label (fontSize 20, first element) + `self tooltipText: page explanation`.
  - Dead tab-pane code (buildExercises/exercisePaneFor:/buildReminderView/buildQuizView) left untouched at its original source.
  - `HSKExerciseTitlesTest` (black-box, 6 tests green) covers class/instance titles and explanations, menu button labels+tooltips, and view titles+tooltips.
- Key discovery: the live UI is menu buttons + HSKReminderView/HSKQuizView in the viewport; the tab-pane exercise path has no senders.
- Pre-existing bugs found (to be recorded in AIDocumentation):
  - `HSKDesktopShellTest suite run` reports 2 errors that do not occur when tests run individually (verified with changes reverted).
  - `childWithId:` answers from a global id registry: a fresh shell does not contain #header/#knowledge/#exercises (raises "Children with id X does not exist"), yet the structure test passes individually. `buildHeader` is dead code.
- Pending: user must choose one of the proposed refactorings (step 4.g), then grey-box tests, AIDocumentation update, second commit.'