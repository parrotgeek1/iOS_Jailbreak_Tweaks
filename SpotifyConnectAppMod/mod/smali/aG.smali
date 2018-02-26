.class final LaG;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:LaD;


# direct methods
.method constructor <init>(LaD;)V
    .locals 0

    iput-object p1, p0, LaG;->a:LaD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, LaG;->a:LaD;

    invoke-static {v0}, LaD;->a(LaD;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LcG;->a()LcT;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, LcG;->a()LcT;

    iget-object v0, p0, LaG;->a:LaD;

    invoke-static {v0}, LaD;->e(LaD;)Lah;

    move-result-object v1

    const/4 v0, 0x0

    iget-object v2, v1, Lah;->m:LbI;

    if-eqz v2, :cond_1

    iget-object v0, v1, Lah;->m:LbI;

    invoke-interface {v0}, LbI;->c()LbM;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, LaG;->a:LaD;

    invoke-static {v1, v0}, LaD;->a(LaD;LbM;)V

    :cond_2
    iget-object v0, p0, LaG;->a:LaD;

    invoke-static {v0}, LaD;->f(LaD;)V

    invoke-static {}, LcG;->a()LcT;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0
.end method
