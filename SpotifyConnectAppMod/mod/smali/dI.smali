.class public abstract LdI;
.super Ljava/lang/Object;


# static fields
.field private static final a:I

.field public static final b:Ljava/util/concurrent/Executor;

.field public static final c:Ljava/util/concurrent/Executor;

.field private static final h:I

.field private static final i:I

.field private static final j:Ljava/util/concurrent/ThreadFactory;

.field private static final k:Ljava/util/concurrent/BlockingQueue;

.field private static final l:LdO;

.field private static volatile m:Ljava/util/concurrent/Executor;


# instance fields
.field public final d:LdS;

.field public final e:Ljava/util/concurrent/FutureTask;

.field public volatile f:I

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final n:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, LdI;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, LdI;->h:I

    sget v0, LdI;->a:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, LdI;->i:I

    new-instance v0, LdJ;

    invoke-direct {v0}, LdJ;-><init>()V

    sput-object v0, LdI;->j:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, LdI;->k:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, LdI;->h:I

    sget v3, LdI;->i:I

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, LdI;->k:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, LdI;->j:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, LdI;->b:Ljava/util/concurrent/Executor;

    new-instance v0, LdP;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LdP;-><init>(B)V

    sput-object v0, LdI;->c:Ljava/util/concurrent/Executor;

    new-instance v0, LdO;

    invoke-direct {v0}, LdO;-><init>()V

    sput-object v0, LdI;->l:LdO;

    sget-object v0, LdI;->c:Ljava/util/concurrent/Executor;

    sput-object v0, LdI;->m:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, LdR;->a:I

    iput v0, p0, LdI;->f:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LdI;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, LdI;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, LdK;

    invoke-direct {v0, p0}, LdK;-><init>(LdI;)V

    iput-object v0, p0, LdI;->d:LdS;

    new-instance v0, LdL;

    iget-object v1, p0, LdI;->d:LdS;

    invoke-direct {v0, p0, v1}, LdL;-><init>(LdI;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, LdI;->e:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method static synthetic a(LdI;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, LdI;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(LdI;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, LdI;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v4, 0x1

    sget-object v0, LdI;->l:LdO;

    new-instance v1, LdN;

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, LdN;-><init>(LdI;[Ljava/lang/Object;)V

    invoke-virtual {v0, v4, v1}, LdO;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method static synthetic b(LdI;)V
    .locals 1

    iget-object v0, p0, LdI;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LdI;->d()V

    :goto_0
    sget v0, LdR;->c:I

    iput v0, p0, LdI;->f:I

    return-void

    :cond_0
    invoke-virtual {p0}, LdI;->c()V

    goto :goto_0
.end method

.method static synthetic b(LdI;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LdI;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, LdI;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method protected static varargs b_()V
    .locals 0

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public final c_()Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, LdI;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, LdI;->e:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public varargs abstract e()Ljava/lang/Object;
.end method
