.class public final enum Ldq;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Ldq;

.field public static final enum b:Ldq;

.field public static final enum c:Ldq;

.field public static final enum d:Ldq;

.field private static final synthetic f:[Ldq;


# instance fields
.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Ldq;

    const-string v1, "DEVELOPER"

    invoke-direct {v0, v1, v5, v2}, Ldq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldq;->a:Ldq;

    new-instance v0, Ldq;

    const-string v1, "USER_SIDELOAD"

    invoke-direct {v0, v1, v2, v3}, Ldq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldq;->b:Ldq;

    new-instance v0, Ldq;

    const-string v1, "TEST_DISTRIBUTION"

    invoke-direct {v0, v1, v3, v4}, Ldq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldq;->c:Ldq;

    new-instance v0, Ldq;

    const-string v1, "APP_STORE"

    invoke-direct {v0, v1, v4, v6}, Ldq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldq;->d:Ldq;

    new-array v0, v6, [Ldq;

    sget-object v1, Ldq;->a:Ldq;

    aput-object v1, v0, v5

    sget-object v1, Ldq;->b:Ldq;

    aput-object v1, v0, v2

    sget-object v1, Ldq;->c:Ldq;

    aput-object v1, v0, v3

    sget-object v1, Ldq;->d:Ldq;

    aput-object v1, v0, v4

    sput-object v0, Ldq;->f:[Ldq;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ldq;->e:I

    return-void
.end method

.method public static a(Ljava/lang/String;)Ldq;
    .locals 1

    const-string v0, "io.crash.air"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ldq;->c:Ldq;

    :goto_0
    return-object v0

    :cond_0
    if-eqz p0, :cond_1

    sget-object v0, Ldq;->d:Ldq;

    goto :goto_0

    :cond_1
    sget-object v0, Ldq;->a:Ldq;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Ldq;
    .locals 1

    const-class v0, Ldq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldq;

    return-object v0
.end method

.method public static values()[Ldq;
    .locals 1

    sget-object v0, Ldq;->f:[Ldq;

    invoke-virtual {v0}, [Ldq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldq;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Ldq;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
