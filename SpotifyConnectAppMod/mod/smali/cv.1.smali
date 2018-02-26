.class public final Lcv;
.super LbR;


# instance fields
.field private final b:Lcw;

.field private final c:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcw;)V
    .locals 2

    invoke-direct {p0}, LbR;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcv;->c:Ljava/util/concurrent/CountDownLatch;

    iput-object p1, p0, Lcv;->b:Lcw;

    return-void
.end method


# virtual methods
.method protected final synthetic e()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcv;->g()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final g()Ljava/lang/Void;
    .locals 3

    invoke-super {p0}, LbR;->g()Ljava/lang/Void;

    move-result-object v0

    iget-object v1, p0, Lcv;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v1, p0, LbR;->a:LbM;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcv;->b:Lcw;

    iget-object v2, p0, LbR;->a:LbM;

    invoke-interface {v1, v2}, Lcw;->a(LbM;)V

    :cond_0
    return-object v0
.end method
