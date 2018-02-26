.class public final Lcm;
.super Landroid/database/ContentObserver;


# instance fields
.field private final a:I

.field private b:I

.field private c:Landroid/content/Context;

.field private d:Lcn;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcn;)V
    .locals 2

    const/4 v1, 0x3

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcm;->c:Landroid/content/Context;

    iput-object p3, p0, Lcm;->d:Lcn;

    invoke-direct {p0}, Lcm;->b()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcm;->b:I

    invoke-direct {p0}, Lcm;->b()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcm;->a:I

    return-void
.end method

.method private b()Landroid/media/AudioManager;
    .locals 2

    iget-object v0, p0, Lcm;->c:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a()I
    .locals 6

    monitor-enter p0

    const-wide v0, 0x40efffe000000000L    # 65535.0

    :try_start_0
    iget v2, p0, Lcm;->b:I

    int-to-double v2, v2

    iget v4, p0, Lcm;->a:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    long-to-int v0, v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Volume set to "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / 65535"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcx;->a()V

    int-to-double v0, p1

    iget v2, p0, Lcm;->a:I

    int-to-double v2, v2

    const-wide v4, 0x40efffe000000000L    # 65535.0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    iget v1, p0, Lcm;->b:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcm;->b()Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_0
    iput p1, p0, Lcm;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onChange(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcm;->b()Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcm;->b:I

    if-eq v2, v1, :cond_0

    iput v1, p0, Lcm;->b:I

    const/4 v0, 0x1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcm;->d:Lcn;

    iget v2, p0, Lcm;->a:I

    invoke-interface {v0, v1, v2}, Lcn;->a(II)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
