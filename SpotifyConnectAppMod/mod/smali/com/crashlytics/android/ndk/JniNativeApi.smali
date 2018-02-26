.class public Lcom/crashlytics/android/ndk/JniNativeApi;
.super Ljava/lang/Object;

# interfaces
.implements LbU;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "crashlytics"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native nativeInit(Ljava/lang/String;Ljava/lang/Object;)Z
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/content/res/AssetManager;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/crashlytics/android/ndk/JniNativeApi;->nativeInit(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
