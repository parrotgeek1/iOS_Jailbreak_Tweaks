.class public final LcJ;
.super Ljava/lang/Object;


# instance fields
.field final a:Landroid/content/Context;

.field b:[LcQ;

.field c:Lee;

.field d:Landroid/os/Handler;

.field e:LcT;

.field f:Z

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:LcM;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, LcJ;->a:Landroid/content/Context;

    return-void
.end method
