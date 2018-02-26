.class final LQ;
.super LcE;


# instance fields
.field final synthetic a:LP;


# direct methods
.method constructor <init>(LP;)V
    .locals 0

    iput-object p1, p0, LQ;->a:LP;

    invoke-direct {p0}, LcE;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, LQ;->a:LP;

    iget-object v1, v0, LO;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v0, LO;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQ;->a:LP;

    iget-object v0, v0, LP;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, LR;

    invoke-direct {v1, p0}, LR;-><init>(LQ;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method
