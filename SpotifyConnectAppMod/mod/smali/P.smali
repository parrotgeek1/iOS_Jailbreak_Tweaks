.class final LP;
.super LO;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field final c:Ljava/util/concurrent/ExecutorService;

.field private final d:LcE;


# direct methods
.method public constructor <init>(LcB;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    invoke-direct {p0}, LO;-><init>()V

    new-instance v0, LQ;

    invoke-direct {v0, p0}, LQ;-><init>(LP;)V

    iput-object v0, p0, LP;->d:LcE;

    iput-object p2, p0, LP;->c:Ljava/util/concurrent/ExecutorService;

    iget-object v0, p0, LP;->d:LcE;

    invoke-virtual {p1, v0}, LcB;->a(LcE;)Z

    return-void
.end method
