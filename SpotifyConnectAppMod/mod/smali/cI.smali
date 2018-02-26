.class final LcI;
.super Ljava/lang/Object;

# interfaces
.implements LcM;


# instance fields
.field final a:Ljava/util/concurrent/CountDownLatch;

.field final synthetic b:I

.field final synthetic c:LcG;


# direct methods
.method constructor <init>(LcG;I)V
    .locals 2

    iput-object p1, p0, LcI;->c:LcG;

    iput p2, p0, LcI;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    iget v1, p0, LcI;->b:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, LcI;->a:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, LcI;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, LcI;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, LcI;->c:LcG;

    invoke-static {v0}, LcG;->a(LcG;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, LcI;->c:LcG;

    invoke-static {v0}, LcG;->b(LcG;)LcM;

    move-result-object v0

    invoke-interface {v0}, LcM;->a()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, LcI;->c:LcG;

    invoke-static {v0}, LcG;->b(LcG;)LcM;

    move-result-object v0

    invoke-interface {v0, p1}, LcM;->a(Ljava/lang/Exception;)V

    return-void
.end method
