.class public Lcom/spotify/tv/android/bridge/JavascriptBridge;
.super Ljava/lang/Object;


# instance fields
.field private mBridgeCallbackListener:Lcom/spotify/tv/android/bridge/BridgeCallbackListener;
    .annotation build Lcom/spotify/tv/android/bridge/UsedByNativeCode;
    .end annotation
.end field

.field private nPtr:J
    .annotation build Lcom/spotify/tv/android/bridge/UsedByNativeCode;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/spotify/tv/android/bridge/BridgeCallbackListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/tv/android/bridge/JavascriptBridge;->mBridgeCallbackListener:Lcom/spotify/tv/android/bridge/BridgeCallbackListener;

    return-void
.end method


# virtual methods
.method public native applyVolume(I)V
.end method

.method public native create(Lcom/spotify/tv/android/bridge/BridgeCallbackListener;ZILjava/lang/String;)V
.end method

.method public native execute(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native executeAsync(Ljava/lang/String;)I
.end method

.method public native nativeRelease()V
.end method

.method public release()V
    .locals 0

    invoke-virtual {p0}, Lcom/spotify/tv/android/bridge/JavascriptBridge;->nativeRelease()V

    return-void
.end method
