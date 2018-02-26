.class final LA;
.super Ljava/lang/Object;

# interfaces
.implements Lei;


# instance fields
.field final a:Lei;

.field final b:Ljava/util/Random;

.field final c:D


# direct methods
.method public constructor <init>(Lei;)V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, p1, v0}, LA;-><init>(Lei;Ljava/util/Random;)V

    return-void
.end method

.method private constructor <init>(Lei;Ljava/util/Random;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "backoff must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, LA;->a:Lei;

    const-wide v0, 0x3fb999999999999aL    # 0.1

    iput-wide v0, p0, LA;->c:D

    iput-object p2, p0, LA;->b:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public final a(I)J
    .locals 6

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget-wide v0, p0, LA;->c:D

    sub-double v0, v4, v0

    iget-wide v2, p0, LA;->c:D

    add-double/2addr v2, v4

    iget-object v4, p0, LA;->b:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextDouble()D

    move-result-wide v4

    sub-double/2addr v2, v0

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-object v2, p0, LA;->a:Lei;

    invoke-interface {v2, p1}, Lei;->a(I)J

    move-result-wide v2

    long-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method
