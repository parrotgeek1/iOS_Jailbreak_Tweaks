.class public final Ldy;
.super Ljava/lang/Object;


# instance fields
.field private final a:LcY;

.field private final b:LcW;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldz;

    invoke-direct {v0, p0}, Ldz;-><init>(Ldy;)V

    iput-object v0, p0, Ldy;->a:LcY;

    new-instance v0, LcW;

    invoke-direct {v0}, LcW;-><init>()V

    iput-object v0, p0, Ldy;->b:LcW;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Ldy;->b:LcW;

    iget-object v2, p0, Ldy;->a:LcY;

    invoke-virtual {v0, p1, v2}, LcW;->a(Landroid/content/Context;LcY;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, LcG;->a()LcT;

    move-result-object v2

    const-string v3, "Fabric"

    const-string v4, "Failed to determine installer package name"

    invoke-interface {v2, v3, v4, v0}, LcT;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method
