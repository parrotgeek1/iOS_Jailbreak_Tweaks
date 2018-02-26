.class final Lan;
.super Ljava/lang/Object;

# interfaces
.implements Lfk;


# instance fields
.field final synthetic a:Lah;


# direct methods
.method constructor <init>(Lah;)V
    .locals 0

    iput-object p1, p0, Lan;->a:Lah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lfn;)Ljava/lang/Object;
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lan;->a:Lah;

    iget-object v0, v0, LcQ;->n:LcG;

    iget-object v2, v0, LcG;->e:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v0, v0, LcG;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lan;->a:Lah;

    invoke-virtual {v2}, Lah;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lan;->a:Lah;

    iget-object v2, p1, Lfn;->c:Lfg;

    invoke-static {v1, v0, v2}, Lah;->a(Lah;Landroid/app/Activity;Lfg;)Z

    move-result v0

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
