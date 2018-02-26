.class final Lq;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/util/concurrent/ScheduledExecutorService;

.field final b:Ljava/util/List;

.field volatile c:Z

.field final d:Ljava/util/concurrent/atomic/AtomicReference;

.field e:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lq;->b:Ljava/util/List;

    iput-boolean v1, p0, Lq;->c:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lq;->d:Ljava/util/concurrent/atomic/AtomicReference;

    iput-boolean v1, p0, Lq;->e:Z

    iput-object p1, p0, Lq;->a:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method
