trigger Case_Trigger on Case (before insert) {

    new Case_TriggerHandler().run();
}