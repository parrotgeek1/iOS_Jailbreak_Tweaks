.class final enum Ldm;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Ldm;

.field public static final enum b:Ldm;

.field public static final enum c:Ldm;

.field public static final enum d:Ldm;

.field public static final enum e:Ldm;

.field public static final enum f:Ldm;

.field public static final enum g:Ldm;

.field public static final enum h:Ldm;

.field public static final enum i:Ldm;

.field public static final enum j:Ldm;

.field private static final k:Ljava/util/Map;

.field private static final synthetic l:[Ldm;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    new-instance v0, Ldm;

    const-string v1, "X86_32"

    invoke-direct {v0, v1, v4}, Ldm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldm;->a:Ldm;

    new-instance v0, Ldm;

    const-string v1, "X86_64"

    invoke-direct {v0, v1, v5}, Ldm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldm;->b:Ldm;

    new-instance v0, Ldm;

    const-string v1, "ARM_UNKNOWN"

    invoke-direct {v0, v1, v6}, Ldm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldm;->c:Ldm;

    new-instance v0, Ldm;

    const-string v1, "PPC"

    invoke-direct {v0, v1, v7}, Ldm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldm;->d:Ldm;

    new-instance v0, Ldm;

    const-string v1, "PPC64"

    invoke-direct {v0, v1, v3}, Ldm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldm;->e:Ldm;

    new-instance v0, Ldm;

    const-string v1, "ARMV6"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ldm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldm;->f:Ldm;

    new-instance v0, Ldm;

    const-string v1, "ARMV7"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ldm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldm;->g:Ldm;

    new-instance v0, Ldm;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Ldm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldm;->h:Ldm;

    new-instance v0, Ldm;

    const-string v1, "ARMV7S"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Ldm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldm;->i:Ldm;

    new-instance v0, Ldm;

    const-string v1, "ARM64"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Ldm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ldm;->j:Ldm;

    const/16 v0, 0xa

    new-array v0, v0, [Ldm;

    sget-object v1, Ldm;->a:Ldm;

    aput-object v1, v0, v4

    sget-object v1, Ldm;->b:Ldm;

    aput-object v1, v0, v5

    sget-object v1, Ldm;->c:Ldm;

    aput-object v1, v0, v6

    sget-object v1, Ldm;->d:Ldm;

    aput-object v1, v0, v7

    sget-object v1, Ldm;->e:Ldm;

    aput-object v1, v0, v3

    const/4 v1, 0x5

    sget-object v2, Ldm;->f:Ldm;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Ldm;->g:Ldm;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Ldm;->h:Ldm;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Ldm;->i:Ldm;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Ldm;->j:Ldm;

    aput-object v2, v0, v1

    sput-object v0, Ldm;->l:[Ldm;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Ldm;->k:Ljava/util/Map;

    const-string v1, "armeabi-v7a"

    sget-object v2, Ldm;->g:Ldm;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldm;->k:Ljava/util/Map;

    const-string v1, "armeabi"

    sget-object v2, Ldm;->f:Ldm;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ldm;->k:Ljava/util/Map;

    const-string v1, "x86"

    sget-object v2, Ldm;->a:Ldm;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static a()Ldm;
    .locals 2

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, LcG;->a()LcT;

    sget-object v0, Ldm;->h:Ldm;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ldm;->k:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldm;

    if-nez v0, :cond_0

    sget-object v0, Ldm;->h:Ldm;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Ldm;
    .locals 1

    const-class v0, Ldm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldm;

    return-object v0
.end method

.method public static values()[Ldm;
    .locals 1

    sget-object v0, Ldm;->l:[Ldm;

    invoke-virtual {v0}, [Ldm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldm;

    return-object v0
.end method
