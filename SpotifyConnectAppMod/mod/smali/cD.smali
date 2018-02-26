.class final LcD;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field final synthetic a:LcE;

.field final synthetic b:LcC;


# direct methods
.method constructor <init>(LcC;LcE;)V
    .locals 0

    iput-object p1, p0, LcD;->b:LcC;

    iput-object p2, p0, LcD;->a:LcE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, LcD;->a:LcE;

    invoke-virtual {v0, p1}, LcE;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, LcD;->a:LcE;

    invoke-virtual {v0, p1}, LcE;->d(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, LcD;->a:LcE;

    invoke-virtual {v0, p1}, LcE;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, LcD;->a:LcE;

    invoke-virtual {v0, p1}, LcE;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, LcD;->a:LcE;

    invoke-virtual {v0, p1}, LcE;->e(Landroid/app/Activity;)V

    return-void
.end method
