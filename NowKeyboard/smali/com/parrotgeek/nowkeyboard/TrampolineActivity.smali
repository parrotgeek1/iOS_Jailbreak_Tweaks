.class public Lcom/parrotgeek/nowkeyboard/TrampolineActivity;
.super Landroid/app/Activity;

.method public constructor <init>()V
    .locals 0
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
    const/4 v0, 0x0
    const/4 v1, 0x1
    invoke-virtual {p0, v0, v0, v0, v1}, Lcom/parrotgeek/nowkeyboard/TrampolineActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    invoke-virtual {p0}, Lcom/parrotgeek/nowkeyboard/TrampolineActivity;->finish()V
    return-void
.end method
