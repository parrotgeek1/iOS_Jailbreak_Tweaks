.class public abstract LcV;
.super Ljava/lang/Object;

# interfaces
.implements LcX;


# instance fields
.field private final a:LcX;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LcV;->a:LcX;

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
.end method

.method public final declared-synchronized a(Landroid/content/Context;LcY;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, LcV;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, LcV;->a:LcX;

    if-eqz v0, :cond_0

    iget-object v0, p0, LcV;->a:LcX;

    invoke-interface {v0, p1, p2}, LcX;->a(Landroid/content/Context;LcY;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-interface {p2, p1}, LcY;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, LcV;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v0
.end method

.method protected abstract a(Ljava/lang/Object;)V
.end method
