.class public final enum Lfl;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lfl;

.field public static final enum b:Lfl;

.field public static final enum c:Lfl;

.field private static final synthetic d:[Lfl;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lfl;

    const-string v1, "USE_CACHE"

    invoke-direct {v0, v1, v2}, Lfl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfl;->a:Lfl;

    new-instance v0, Lfl;

    const-string v1, "SKIP_CACHE_LOOKUP"

    invoke-direct {v0, v1, v3}, Lfl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfl;->b:Lfl;

    new-instance v0, Lfl;

    const-string v1, "IGNORE_CACHE_EXPIRATION"

    invoke-direct {v0, v1, v4}, Lfl;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfl;->c:Lfl;

    const/4 v0, 0x3

    new-array v0, v0, [Lfl;

    sget-object v1, Lfl;->a:Lfl;

    aput-object v1, v0, v2

    sget-object v1, Lfl;->b:Lfl;

    aput-object v1, v0, v3

    sget-object v1, Lfl;->c:Lfl;

    aput-object v1, v0, v4

    sput-object v0, Lfl;->d:[Lfl;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfl;
    .locals 1

    const-class v0, Lfl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lfl;

    return-object v0
.end method

.method public static values()[Lfl;
    .locals 1

    sget-object v0, Lfl;->d:[Lfl;

    invoke-virtual {v0}, [Lfl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfl;

    return-object v0
.end method
