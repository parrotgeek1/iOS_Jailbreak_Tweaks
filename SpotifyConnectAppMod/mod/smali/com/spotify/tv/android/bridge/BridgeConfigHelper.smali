.class public Lcom/spotify/tv/android/bridge/BridgeConfigHelper;
.super Ljava/lang/Object;


# static fields
.field private static final BRANDS_THAT_DO_NOT_SUPPORT_VOLUME:Ljava/util/Set;

.field private static final DEFAULT_VOLUME_STEPS:I = 0x20

.field private static final VOLUME_STEPS_NOT_SUPPORTED:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/spotify/tv/android/bridge/BridgeConfigHelper;->BRANDS_THAT_DO_NOT_SUPPORT_VOLUME:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVolumeSteps(Landroid/content/Context;)I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public static isLoggingEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
