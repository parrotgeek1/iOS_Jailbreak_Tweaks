.class Lcom/spotify/tv/android/BridgeService$BridgeBinder;
.super Landroid/os/Binder;

# interfaces
.implements Lce;


# instance fields
.field final synthetic a:Lcom/spotify/tv/android/BridgeService;


# direct methods
.method private constructor <init>(Lcom/spotify/tv/android/BridgeService;)V
    .locals 0

    iput-object p1, p0, Lcom/spotify/tv/android/BridgeService$BridgeBinder;->a:Lcom/spotify/tv/android/BridgeService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spotify/tv/android/BridgeService;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/spotify/tv/android/BridgeService$BridgeBinder;-><init>(Lcom/spotify/tv/android/BridgeService;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/spotify/tv/android/BridgeService$BridgeBinder;->a:Lcom/spotify/tv/android/BridgeService;

    invoke-static {v0}, Lcom/spotify/tv/android/BridgeService;->a(Lcom/spotify/tv/android/BridgeService;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/spotify/tv/android/BridgeService$BridgeBinder;->a:Lcom/spotify/tv/android/BridgeService;

    invoke-static {v0, p1}, Lcom/spotify/tv/android/BridgeService;->a(Lcom/spotify/tv/android/BridgeService;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final a(Lcf;)V
    .locals 1

    iget-object v0, p0, Lcom/spotify/tv/android/BridgeService$BridgeBinder;->a:Lcom/spotify/tv/android/BridgeService;

    invoke-static {v0, p1}, Lcom/spotify/tv/android/BridgeService;->a(Lcom/spotify/tv/android/BridgeService;Lcf;)V

    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/spotify/tv/android/BridgeService$BridgeBinder;->a:Lcom/spotify/tv/android/BridgeService;

    invoke-static {v0}, Lco;->a(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public final b(Lcf;)V
    .locals 1

    iget-object v0, p0, Lcom/spotify/tv/android/BridgeService$BridgeBinder;->a:Lcom/spotify/tv/android/BridgeService;

    invoke-static {v0, p1}, Lcom/spotify/tv/android/BridgeService;->b(Lcom/spotify/tv/android/BridgeService;Lcf;)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/spotify/tv/android/BridgeService$BridgeBinder;->a:Lcom/spotify/tv/android/BridgeService;

    invoke-static {v0}, Lcom/spotify/tv/android/BridgeService;->b(Lcom/spotify/tv/android/BridgeService;)V

    return-void
.end method
