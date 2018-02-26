.class final LaW;
.super Ljava/lang/Object;


# static fields
.field private static final f:Landroid/content/IntentFilter;

.field private static final g:Landroid/content/IntentFilter;

.field private static final h:Landroid/content/IntentFilter;


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final b:Landroid/content/Context;

.field final c:Landroid/content/BroadcastReceiver;

.field final d:Landroid/content/BroadcastReceiver;

.field e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, LaW;->f:Landroid/content/IntentFilter;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, LaW;->g:Landroid/content/IntentFilter;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, LaW;->h:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LaW;->b:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, LaW;->f:Landroid/content/IntentFilter;

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "status"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, LaW;->e:Z

    new-instance v0, LaX;

    invoke-direct {v0, p0}, LaX;-><init>(LaW;)V

    iput-object v0, p0, LaW;->d:Landroid/content/BroadcastReceiver;

    new-instance v0, LaY;

    invoke-direct {v0, p0}, LaY;-><init>(LaW;)V

    iput-object v0, p0, LaW;->c:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, LaW;->d:Landroid/content/BroadcastReceiver;

    sget-object v2, LaW;->g:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, LaW;->c:Landroid/content/BroadcastReceiver;

    sget-object v2, LaW;->h:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, LaW;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(LaW;Z)Z
    .locals 0

    iput-boolean p1, p0, LaW;->e:Z

    return p1
.end method
