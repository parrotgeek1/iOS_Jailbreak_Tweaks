.class public final enum Ldx;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Ldx;

.field public static final enum b:Ldx;

.field public static final enum c:Ldx;

.field public static final enum d:Ldx;

.field public static final enum e:Ldx;

.field public static final enum f:Ldx;

.field public static final enum g:Ldx;

.field private static final synthetic i:[Ldx;


# instance fields
.field public final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    new-instance v0, Ldx;

    const-string v1, "WIFI_MAC_ADDRESS"

    invoke-direct {v0, v1, v6, v4}, Ldx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldx;->a:Ldx;

    new-instance v0, Ldx;

    const-string v1, "BLUETOOTH_MAC_ADDRESS"

    invoke-direct {v0, v1, v4, v5}, Ldx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldx;->b:Ldx;

    new-instance v0, Ldx;

    const-string v1, "FONT_TOKEN"

    const/16 v2, 0x35

    invoke-direct {v0, v1, v5, v2}, Ldx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldx;->c:Ldx;

    new-instance v0, Ldx;

    const-string v1, "ANDROID_ID"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v7, v2}, Ldx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldx;->d:Ldx;

    new-instance v0, Ldx;

    const-string v1, "ANDROID_DEVICE_ID"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v8, v2}, Ldx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldx;->e:Ldx;

    new-instance v0, Ldx;

    const-string v1, "ANDROID_SERIAL"

    const/4 v2, 0x5

    const/16 v3, 0x66

    invoke-direct {v0, v1, v2, v3}, Ldx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldx;->f:Ldx;

    new-instance v0, Ldx;

    const-string v1, "ANDROID_ADVERTISING_ID"

    const/4 v2, 0x6

    const/16 v3, 0x67

    invoke-direct {v0, v1, v2, v3}, Ldx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldx;->g:Ldx;

    const/4 v0, 0x7

    new-array v0, v0, [Ldx;

    sget-object v1, Ldx;->a:Ldx;

    aput-object v1, v0, v6

    sget-object v1, Ldx;->b:Ldx;

    aput-object v1, v0, v4

    sget-object v1, Ldx;->c:Ldx;

    aput-object v1, v0, v5

    sget-object v1, Ldx;->d:Ldx;

    aput-object v1, v0, v7

    sget-object v1, Ldx;->e:Ldx;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Ldx;->f:Ldx;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ldx;->g:Ldx;

    aput-object v2, v0, v1

    sput-object v0, Ldx;->i:[Ldx;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ldx;->h:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ldx;
    .locals 1

    const-class v0, Ldx;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldx;

    return-object v0
.end method

.method public static values()[Ldx;
    .locals 1

    sget-object v0, Ldx;->i:[Ldx;

    invoke-virtual {v0}, [Ldx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldx;

    return-object v0
.end method
