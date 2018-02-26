.class public final enum LK;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:LK;

.field public static final enum b:LK;

.field public static final enum c:LK;

.field public static final enum d:LK;

.field public static final enum e:LK;

.field public static final enum f:LK;

.field public static final enum g:LK;

.field public static final enum h:LK;

.field private static final synthetic i:[LK;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, LK;

    const-string v1, "START"

    invoke-direct {v0, v1, v3}, LK;-><init>(Ljava/lang/String;I)V

    sput-object v0, LK;->a:LK;

    new-instance v0, LK;

    const-string v1, "RESUME"

    invoke-direct {v0, v1, v4}, LK;-><init>(Ljava/lang/String;I)V

    sput-object v0, LK;->b:LK;

    new-instance v0, LK;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v5}, LK;-><init>(Ljava/lang/String;I)V

    sput-object v0, LK;->c:LK;

    new-instance v0, LK;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v6}, LK;-><init>(Ljava/lang/String;I)V

    sput-object v0, LK;->d:LK;

    new-instance v0, LK;

    const-string v1, "CRASH"

    invoke-direct {v0, v1, v7}, LK;-><init>(Ljava/lang/String;I)V

    sput-object v0, LK;->e:LK;

    new-instance v0, LK;

    const-string v1, "INSTALL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LK;-><init>(Ljava/lang/String;I)V

    sput-object v0, LK;->f:LK;

    new-instance v0, LK;

    const-string v1, "CUSTOM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LK;-><init>(Ljava/lang/String;I)V

    sput-object v0, LK;->g:LK;

    new-instance v0, LK;

    const-string v1, "PREDEFINED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, LK;-><init>(Ljava/lang/String;I)V

    sput-object v0, LK;->h:LK;

    const/16 v0, 0x8

    new-array v0, v0, [LK;

    sget-object v1, LK;->a:LK;

    aput-object v1, v0, v3

    sget-object v1, LK;->b:LK;

    aput-object v1, v0, v4

    sget-object v1, LK;->c:LK;

    aput-object v1, v0, v5

    sget-object v1, LK;->d:LK;

    aput-object v1, v0, v6

    sget-object v1, LK;->e:LK;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, LK;->f:LK;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, LK;->g:LK;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, LK;->h:LK;

    aput-object v2, v0, v1

    sput-object v0, LK;->i:[LK;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LK;
    .locals 1

    const-class v0, LK;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, LK;

    return-object v0
.end method

.method public static values()[LK;
    .locals 1

    sget-object v0, LK;->i:[LK;

    invoke-virtual {v0}, [LK;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LK;

    return-object v0
.end method
