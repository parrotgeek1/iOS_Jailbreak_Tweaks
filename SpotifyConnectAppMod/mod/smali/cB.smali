.class public final LcB;
.super Ljava/lang/Object;


# instance fields
.field public a:LcC;

.field private final b:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    iput-object v0, p0, LcB;->b:Landroid/app/Application;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    new-instance v0, LcC;

    iget-object v1, p0, LcB;->b:Landroid/app/Application;

    invoke-direct {v0, v1}, LcC;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, LcB;->a:LcC;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(LcE;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, LcB;->a:LcC;

    if-eqz v2, :cond_1

    iget-object v2, p0, LcB;->a:LcC;

    iget-object v3, v2, LcC;->b:Landroid/app/Application;

    if-eqz v3, :cond_0

    new-instance v3, LcD;

    invoke-direct {v3, v2, p1}, LcD;-><init>(LcC;LcE;)V

    iget-object v4, v2, LcC;->b:Landroid/app/Application;

    invoke-virtual {v4, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v2, v2, LcC;->a:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
