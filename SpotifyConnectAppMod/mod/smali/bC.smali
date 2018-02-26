.class final LbC;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lab;

.field private static final b:Lab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0"

    invoke-static {v0}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v0

    sput-object v0, LbC;->a:Lab;

    const-string v0, "Unity"

    invoke-static {v0}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v0

    sput-object v0, LbC;->b:Lab;

    return-void
.end method

.method private static a()I
    .locals 4

    const/4 v0, 0x1

    sget-object v1, LbC;->a:Lab;

    invoke-static {v0, v1}, Laf;->b(ILab;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    const/4 v1, 0x2

    sget-object v2, LbC;->a:Lab;

    invoke-static {v1, v2}, Laf;->b(ILab;)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Laf;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static a(IIJJ)I
    .locals 2

    invoke-static {}, Laf;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    invoke-static {p0}, Laf;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-static {v1}, Laf;->b(I)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x4

    invoke-static {v1, p1}, Laf;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x5

    invoke-static {v1, p2, p3}, Laf;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x6

    invoke-static {v1, p4, p5}, Laf;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static a(Lab;Lab;)I
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x1

    invoke-static {v0, v2, v3}, Laf;->b(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    const/4 v1, 0x2

    invoke-static {v1, v2, v3}, Laf;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-static {v1, p0}, Laf;->b(ILab;)I

    move-result v1

    add-int/2addr v0, v1

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    invoke-static {v1, p1}, Laf;->b(ILab;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method private static a(Ldx;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Ldx;->h:I

    invoke-static {v0, v1}, Laf;->d(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {p1}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v2

    invoke-static {v1, v2}, Laf;->b(ILab;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static a(Ljava/lang/StackTraceElement;Z)I
    .locals 6

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Laf;->b(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v3

    invoke-static {v1, v3}, Laf;->b(ILab;)I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v4

    invoke-static {v3, v4}, Laf;->b(ILab;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_0
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    if-lez v3, :cond_3

    const/4 v3, 0x4

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Laf;->b(IJ)I

    move-result v3

    add-int/2addr v0, v3

    move v3, v0

    :goto_1
    const/4 v4, 0x5

    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    invoke-static {v4, v0}, Laf;->c(II)I

    move-result v0

    add-int/2addr v0, v3

    return v0

    :cond_1
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Laf;->b(IJ)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v3, v0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x1

    invoke-static {p0}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v1

    invoke-static {v0, v1}, Laf;->b(ILab;)I

    move-result v0

    const/4 v1, 0x2

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static {p1}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v2

    invoke-static {v1, v2}, Laf;->b(ILab;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static a(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v1

    invoke-static {v0, v1}, Laf;->b(ILab;)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, p2}, Laf;->c(II)I

    move-result v1

    add-int/2addr v1, v0

    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    invoke-static {v3, p3}, LbC;->a(Ljava/lang/StackTraceElement;Z)I

    move-result v3

    const/4 v4, 0x3

    invoke-static {v4}, Laf;->d(I)I

    move-result v4

    invoke-static {v3}, Laf;->f(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static a(Ljava/lang/Throwable;II)I
    .locals 9

    const/4 v8, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v0

    invoke-static {v8, v0}, Laf;->b(ILab;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x3

    invoke-static {v2}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v2

    invoke-static {v3, v2}, Laf;->b(ILab;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v3, v4, v2

    invoke-static {v3, v8}, LbC;->a(Ljava/lang/StackTraceElement;Z)I

    move-result v3

    const/4 v6, 0x4

    invoke-static {v6}, Laf;->d(I)I

    move-result v6

    invoke-static {v3}, Laf;->f(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    add-int/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2

    if-ge p1, p2, :cond_3

    add-int/lit8 v1, p1, 0x1

    invoke-static {v2, v1, p2}, LbC;->a(Ljava/lang/Throwable;II)I

    move-result v1

    const/4 v2, 0x6

    invoke-static {v2}, Laf;->d(I)I

    move-result v2

    invoke-static {v1}, Laf;->f(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_2
    :goto_1
    return v0

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x7

    invoke-static {v2, v1}, Laf;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method private static a(Ljava/lang/Throwable;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;Lab;Lab;)I
    .locals 9

    const/4 v8, 0x3

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v0, 0x4

    invoke-static {p1, p2, v0, v7}, LbC;->a(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result v0

    invoke-static {v7}, Laf;->d(I)I

    move-result v1

    invoke-static {v0}, Laf;->f(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x0

    array-length v4, p3

    move v1, v2

    move v3, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, p3, v1

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    invoke-static {v5, v0, v2, v2}, LbC;->a(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result v0

    invoke-static {v7}, Laf;->d(I)I

    move-result v5

    invoke-static {v0}, Laf;->f(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    add-int/2addr v3, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-static {p0, v7, v0}, LbC;->a(Ljava/lang/Throwable;II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1}, Laf;->d(I)I

    move-result v1

    invoke-static {v0}, Laf;->f(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    invoke-static {}, LbC;->a()I

    move-result v1

    invoke-static {v8}, Laf;->d(I)I

    move-result v2

    invoke-static {v1}, Laf;->f(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-static {p5, p6}, LbC;->a(Lab;Lab;)I

    move-result v1

    invoke-static {v8}, Laf;->d(I)I

    move-result v2

    invoke-static {v1}, Laf;->f(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method private static a(Ljava/lang/Throwable;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;Lab;Lab;Ljava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;I)I
    .locals 5

    invoke-static/range {p0 .. p6}, LbC;->a(Ljava/lang/Throwable;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;Lab;Lab;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1}, Laf;->d(I)I

    move-result v1

    invoke-static {v0}, Laf;->f(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x0

    if-eqz p7, :cond_1

    invoke-interface {p7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, LbC;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1}, Laf;->d(I)I

    move-result v1

    invoke-static {v0}, Laf;->f(I)I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v2

    :cond_1
    if-eqz p8, :cond_2

    const/4 v1, 0x3

    iget v2, p8, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-static {v1}, Laf;->b(I)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    const/4 v1, 0x4

    invoke-static {v1, p9}, Laf;->c(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static a(Ljava/lang/String;)Lab;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Laf;ILjava/lang/StackTraceElement;Z)V
    .locals 6

    const/4 v0, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v5}, Laf;->e(II)V

    invoke-static {p2, p3}, LbC;->a(Ljava/lang/StackTraceElement;Z)I

    move-result v2

    invoke-virtual {p0, v2}, Laf;->e(I)V

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v4, v2, v3}, Laf;->a(IJ)V

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Laf;->a(ILab;)V

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Laf;->a(ILab;)V

    :cond_0
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->isNativeMethod()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v0, v2, v3}, Laf;->a(IJ)V

    :cond_1
    const/4 v2, 0x5

    if-eqz p3, :cond_3

    :goto_1
    invoke-virtual {p0, v2, v0}, Laf;->a(II)V

    return-void

    :cond_2
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v4, v2, v3}, Laf;->a(IJ)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public static a(Laf;JLjava/lang/String;Ljava/lang/Throwable;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;Ljava/util/Map;Lbc;Landroid/app/ActivityManager$RunningAppProcessInfo;ILjava/lang/String;Ljava/lang/String;FIZJJ)V
    .locals 20

    invoke-static/range {p13 .. p13}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v9

    if-nez p14, :cond_2

    const/4 v10, 0x0

    :goto_0
    invoke-virtual/range {p10 .. p10}, Lbc;->a()Lab;

    move-result-object v18

    if-nez v18, :cond_0

    invoke-static {}, LcG;->a()LcT;

    :cond_0
    invoke-virtual/range {p10 .. p10}, Lbc;->b()V

    const/16 v4, 0xa

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Laf;->e(II)V

    const/4 v4, 0x1

    move-wide/from16 v0, p1

    invoke-static {v4, v0, v1}, Laf;->b(IJ)I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    const/4 v5, 0x2

    invoke-static/range {p3 .. p3}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v6

    invoke-static {v5, v6}, Laf;->b(ILab;)I

    move-result v5

    add-int v14, v4, v5

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p11

    move/from16 v13, p12

    invoke-static/range {v4 .. v13}, LbC;->a(Ljava/lang/Throwable;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;Lab;Lab;Ljava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;I)I

    move-result v4

    const/4 v5, 0x3

    invoke-static {v5}, Laf;->d(I)I

    move-result v5

    invoke-static {v4}, Laf;->f(I)I

    move-result v6

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    add-int/2addr v4, v14

    move/from16 v12, p16

    move/from16 v13, p12

    move-wide/from16 v14, p18

    move-wide/from16 v16, p20

    invoke-static/range {v12 .. v17}, LbC;->a(IIJJ)I

    move-result v5

    const/4 v6, 0x5

    invoke-static {v6}, Laf;->d(I)I

    move-result v6

    invoke-static {v5}, Laf;->f(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    if-eqz v18, :cond_1

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Laf;->b(ILab;)I

    move-result v5

    const/4 v6, 0x6

    invoke-static {v6}, Laf;->d(I)I

    move-result v6

    invoke-static {v5}, Laf;->f(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Laf;->e(I)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-virtual {v0, v4, v1, v2}, Laf;->a(IJ)V

    const/4 v4, 0x2

    invoke-static/range {p3 .. p3}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Laf;->a(ILab;)V

    const/4 v4, 0x3

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Laf;->e(II)V

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p11

    move/from16 v13, p12

    invoke-static/range {v4 .. v13}, LbC;->a(Ljava/lang/Throwable;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;Lab;Lab;Ljava/util/Map;Landroid/app/ActivityManager$RunningAppProcessInfo;I)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Laf;->e(I)V

    const/4 v4, 0x1

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Laf;->e(II)V

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v4 .. v10}, LbC;->a(Ljava/lang/Throwable;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;Lab;Lab;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Laf;->e(I)V

    const/4 v4, 0x4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-static {v0, v1, v2, v4, v5}, LbC;->a(Laf;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V

    move-object/from16 v0, p7

    array-length v6, v0

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v7, p7, v5

    move-object/from16 v0, p8

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/StackTraceElement;

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v7, v4, v8, v11}, LbC;->a(Laf;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1

    :cond_2
    const-string v4, "-"

    const-string v5, ""

    move-object/from16 v0, p14

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v10

    goto/16 :goto_0

    :cond_3
    const/4 v5, 0x1

    const/4 v4, 0x2

    move-object/from16 v6, p0

    :goto_2
    const/4 v7, 0x2

    invoke-virtual {v6, v4, v7}, Laf;->e(II)V

    const/4 v4, 0x1

    const/16 v7, 0x8

    move-object/from16 v0, p4

    invoke-static {v0, v4, v7}, LbC;->a(Ljava/lang/Throwable;II)I

    move-result v4

    invoke-virtual {v6, v4}, Laf;->e(I)V

    const/4 v4, 0x1

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Laf;->a(ILab;)V

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    const/4 v7, 0x3

    invoke-static {v4}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Laf;->a(ILab;)V

    :cond_4
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    array-length v8, v7

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v8, :cond_5

    aget-object v11, v7, v4

    const/4 v12, 0x4

    const/4 v13, 0x1

    invoke-static {v6, v12, v11, v13}, LbC;->a(Laf;ILjava/lang/StackTraceElement;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p4

    if-eqz p4, :cond_8

    const/16 v4, 0x8

    if-ge v5, v4, :cond_6

    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x6

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    :goto_4
    if-eqz p4, :cond_7

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    const/4 v5, 0x7

    invoke-virtual {v6, v5, v4}, Laf;->a(II)V

    :cond_8
    const/4 v4, 0x3

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Laf;->e(II)V

    invoke-static {}, LbC;->a()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Laf;->e(I)V

    const/4 v4, 0x1

    sget-object v5, LbC;->a:Lab;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Laf;->a(ILab;)V

    const/4 v4, 0x2

    sget-object v5, LbC;->a:Lab;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Laf;->a(ILab;)V

    const/4 v4, 0x3

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Laf;->a(IJ)V

    const/4 v4, 0x4

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Laf;->e(II)V

    invoke-static {v9, v10}, LbC;->a(Lab;Lab;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Laf;->e(I)V

    const/4 v4, 0x1

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Laf;->a(IJ)V

    const/4 v4, 0x2

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6, v7}, Laf;->a(IJ)V

    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Laf;->a(ILab;)V

    if-eqz v10, :cond_9

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10}, Laf;->a(ILab;)V

    :cond_9
    if-eqz p9, :cond_b

    invoke-interface/range {p9 .. p9}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-interface/range {p9 .. p9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    const/4 v5, 0x2

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Laf;->e(II)V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v5, v6}, LbC;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Laf;->e(I)V

    const/4 v6, 0x1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v5}, Laf;->a(ILab;)V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x2

    if-nez v4, :cond_a

    const-string v4, ""

    :cond_a
    invoke-static {v4}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Laf;->a(ILab;)V

    goto :goto_5

    :cond_b
    if-eqz p11, :cond_c

    const/4 v5, 0x3

    move-object/from16 v0, p11

    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x64

    if-eq v4, v6, :cond_e

    const/4 v4, 0x1

    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Laf;->a(IZ)V

    :cond_c
    const/4 v4, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p12

    invoke-virtual {v0, v4, v1}, Laf;->a(II)V

    const/4 v4, 0x5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Laf;->e(II)V

    move/from16 v4, p16

    move/from16 v5, p12

    move-wide/from16 v6, p18

    move-wide/from16 v8, p20

    invoke-static/range {v4 .. v9}, LbC;->a(IIJJ)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Laf;->e(I)V

    move-object/from16 v0, p0

    move/from16 v1, p15

    invoke-virtual {v0, v1}, Laf;->a(F)V

    move-object/from16 v0, p0

    move/from16 v1, p16

    invoke-virtual {v0, v1}, Laf;->a(I)V

    const/4 v4, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p17

    invoke-virtual {v0, v4, v1}, Laf;->a(IZ)V

    const/4 v4, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p12

    invoke-virtual {v0, v4, v1}, Laf;->a(II)V

    const/4 v4, 0x5

    move-object/from16 v0, p0

    move-wide/from16 v1, p18

    invoke-virtual {v0, v4, v1, v2}, Laf;->a(IJ)V

    const/4 v4, 0x6

    move-object/from16 v0, p0

    move-wide/from16 v1, p20

    invoke-virtual {v0, v4, v1, v2}, Laf;->a(IJ)V

    if-eqz v18, :cond_d

    const/4 v4, 0x6

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Laf;->e(II)V

    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Laf;->b(ILab;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Laf;->e(I)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v4, v1}, Laf;->a(ILab;)V

    :cond_d
    return-void

    :cond_e
    const/4 v4, 0x0

    goto :goto_6
.end method

.method public static a(Laf;Ljava/lang/String;ILjava/lang/String;IJJZLjava/util/Map;ILjava/lang/String;Ljava/lang/String;)V
    .locals 11

    invoke-static {p1}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v5

    invoke-static {p3}, LbC;->a(Ljava/lang/String;)Lab;

    move-result-object v6

    invoke-static/range {p13 .. p13}, LbC;->a(Ljava/lang/String;)Lab;

    move-result-object v7

    invoke-static/range {p12 .. p12}, LbC;->a(Ljava/lang/String;)Lab;

    move-result-object v8

    const/16 v2, 0x9

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Laf;->e(II)V

    const/4 v2, 0x1

    invoke-static {v2, v5}, Laf;->b(ILab;)I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    const/4 v3, 0x3

    invoke-static {v3, p2}, Laf;->d(II)I

    move-result v3

    add-int/2addr v3, v2

    if-nez v6, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/2addr v2, v3

    const/4 v3, 0x5

    invoke-static {v3, p4}, Laf;->c(II)I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x6

    move-wide/from16 v0, p5

    invoke-static {v3, v0, v1}, Laf;->b(IJ)I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x7

    move-wide/from16 v0, p7

    invoke-static {v3, v0, v1}, Laf;->b(IJ)I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0xa

    invoke-static {v3}, Laf;->b(I)I

    move-result v3

    add-int/2addr v2, v3

    if-eqz p10, :cond_1

    invoke-interface/range {p10 .. p10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v4, v2

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldx;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, LbC;->a(Ldx;Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0xb

    invoke-static {v3}, Laf;->d(I)I

    move-result v3

    invoke-static {v2}, Laf;->f(I)I

    move-result v10

    add-int/2addr v3, v10

    add-int/2addr v2, v3

    add-int/2addr v2, v4

    move v4, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x4

    invoke-static {v2, v6}, Laf;->b(ILab;)I

    move-result v2

    goto :goto_0

    :cond_1
    move v4, v2

    :cond_2
    const/16 v2, 0xc

    move/from16 v0, p11

    invoke-static {v2, v0}, Laf;->c(II)I

    move-result v2

    add-int v3, v4, v2

    if-nez v8, :cond_3

    const/4 v2, 0x0

    :goto_2
    add-int/2addr v3, v2

    if-nez v7, :cond_4

    const/4 v2, 0x0

    :goto_3
    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Laf;->e(I)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v5}, Laf;->a(ILab;)V

    const/4 v2, 0x3

    invoke-virtual {p0, v2, p2}, Laf;->b(II)V

    const/4 v2, 0x4

    invoke-virtual {p0, v2, v6}, Laf;->a(ILab;)V

    const/4 v2, 0x5

    invoke-virtual {p0, v2, p4}, Laf;->a(II)V

    const/4 v2, 0x6

    move-wide/from16 v0, p5

    invoke-virtual {p0, v2, v0, v1}, Laf;->a(IJ)V

    const/4 v2, 0x7

    move-wide/from16 v0, p7

    invoke-virtual {p0, v2, v0, v1}, Laf;->a(IJ)V

    const/16 v2, 0xa

    move/from16 v0, p9

    invoke-virtual {p0, v2, v0}, Laf;->a(IZ)V

    invoke-interface/range {p10 .. p10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const/16 v3, 0xb

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Laf;->e(II)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldx;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4}, LbC;->a(Ldx;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Laf;->e(I)V

    const/4 v4, 0x1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldx;

    iget v3, v3, Ldx;->h:I

    invoke-virtual {p0, v4, v3}, Laf;->b(II)V

    const/4 v3, 0x2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Laf;->a(ILab;)V

    goto :goto_4

    :cond_3
    const/16 v2, 0xd

    invoke-static {v2, v8}, Laf;->b(ILab;)I

    move-result v2

    goto :goto_2

    :cond_4
    const/16 v2, 0xe

    invoke-static {v2, v7}, Laf;->b(ILab;)I

    move-result v2

    goto :goto_3

    :cond_5
    const/16 v2, 0xc

    move/from16 v0, p11

    invoke-virtual {p0, v2, v0}, Laf;->a(II)V

    if-eqz v8, :cond_6

    const/16 v2, 0xd

    invoke-virtual {p0, v2, v8}, Laf;->a(ILab;)V

    :cond_6
    if-eqz v7, :cond_7

    const/16 v2, 0xe

    invoke-virtual {p0, v2, v7}, Laf;->a(ILab;)V

    :cond_7
    return-void
.end method

.method public static a(Laf;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    const/4 v0, 0x1

    invoke-static {p2}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Laf;->a(ILab;)V

    const/4 v0, 0x2

    invoke-static {p1}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Laf;->a(ILab;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p3, p4}, Laf;->a(IJ)V

    return-void
.end method

.method public static a(Laf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x2

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-static {p1}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v1

    invoke-static {p2}, LbC;->a(Ljava/lang/String;)Lab;

    move-result-object v2

    invoke-static {p3}, LbC;->a(Ljava/lang/String;)Lab;

    move-result-object v3

    invoke-static {v6, v1}, Laf;->b(ILab;)I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    if-eqz p2, :cond_1

    invoke-static {v5, v2}, Laf;->b(ILab;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_1
    if-eqz p3, :cond_2

    invoke-static {v7, v3}, Laf;->b(ILab;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_2
    const/4 v4, 0x6

    invoke-virtual {p0, v4, v5}, Laf;->e(II)V

    invoke-virtual {p0, v0}, Laf;->e(I)V

    invoke-virtual {p0, v6, v1}, Laf;->a(ILab;)V

    if-eqz p2, :cond_3

    invoke-virtual {p0, v5, v2}, Laf;->a(ILab;)V

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p0, v7, v3}, Laf;->a(ILab;)V

    :cond_4
    return-void
.end method

.method public static a(Laf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 11

    invoke-static {p1}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v3

    invoke-static {p2}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v4

    invoke-static {p3}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v5

    invoke-static {p4}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v6

    invoke-static/range {p5 .. p5}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v7

    if-eqz p7, :cond_2

    invoke-static/range {p7 .. p7}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v1

    :goto_0
    const/4 v2, 0x7

    const/4 v8, 0x2

    invoke-virtual {p0, v2, v8}, Laf;->e(II)V

    const/4 v2, 0x1

    invoke-static {v2, v3}, Laf;->b(ILab;)I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    const/4 v8, 0x2

    invoke-static {v8, v5}, Laf;->b(ILab;)I

    move-result v8

    add-int/2addr v2, v8

    const/4 v8, 0x3

    invoke-static {v8, v6}, Laf;->b(ILab;)I

    move-result v8

    add-int/2addr v2, v8

    const/4 v8, 0x1

    invoke-static {v8, v4}, Laf;->b(ILab;)I

    move-result v8

    add-int/lit8 v8, v8, 0x0

    const/4 v9, 0x5

    invoke-static {v9}, Laf;->d(I)I

    move-result v9

    invoke-static {v8}, Laf;->f(I)I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    add-int/2addr v2, v8

    const/4 v8, 0x6

    invoke-static {v8, v7}, Laf;->b(ILab;)I

    move-result v8

    add-int/2addr v2, v8

    if-eqz v1, :cond_0

    const/16 v8, 0x8

    sget-object v9, LbC;->b:Lab;

    invoke-static {v8, v9}, Laf;->b(ILab;)I

    move-result v8

    add-int/2addr v2, v8

    const/16 v8, 0x9

    invoke-static {v8, v1}, Laf;->b(ILab;)I

    move-result v8

    add-int/2addr v2, v8

    :cond_0
    const/16 v8, 0xa

    move/from16 v0, p6

    invoke-static {v8, v0}, Laf;->d(II)I

    move-result v8

    add-int/2addr v2, v8

    invoke-virtual {p0, v2}, Laf;->e(I)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v3}, Laf;->a(ILab;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v5}, Laf;->a(ILab;)V

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v6}, Laf;->a(ILab;)V

    const/4 v2, 0x5

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Laf;->e(II)V

    const/4 v2, 0x1

    invoke-static {v2, v4}, Laf;->b(ILab;)I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {p0, v2}, Laf;->e(I)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v4}, Laf;->a(ILab;)V

    const/4 v2, 0x6

    invoke-virtual {p0, v2, v7}, Laf;->a(ILab;)V

    if-eqz v1, :cond_1

    const/16 v2, 0x8

    sget-object v3, LbC;->b:Lab;

    invoke-virtual {p0, v2, v3}, Laf;->a(ILab;)V

    const/16 v2, 0x9

    invoke-virtual {p0, v2, v1}, Laf;->a(ILab;)V

    :cond_1
    const/16 v1, 0xa

    move/from16 v0, p6

    invoke-virtual {p0, v1, v0}, Laf;->b(II)V

    return-void

    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private static a(Laf;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)V
    .locals 4

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v2}, Laf;->e(II)V

    invoke-static {p1, p2, p3, p4}, LbC;->a(Ljava/lang/Thread;[Ljava/lang/StackTraceElement;IZ)I

    move-result v0

    invoke-virtual {p0, v0}, Laf;->e(I)V

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Laf;->a(ILab;)V

    invoke-virtual {p0, v2, p3}, Laf;->a(II)V

    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    const/4 v3, 0x3

    invoke-static {p0, v3, v2, p4}, LbC;->a(Laf;ILjava/lang/StackTraceElement;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Laf;Z)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x3

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v0}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-static {v1}, Lab;->a(Ljava/lang/String;)Lab;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {p0, v2, v5}, Laf;->e(II)V

    invoke-static {v6, v4}, Laf;->d(II)I

    move-result v2

    add-int/lit8 v2, v2, 0x0

    invoke-static {v5, v0}, Laf;->b(ILab;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v4, v1}, Laf;->b(ILab;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v7}, Laf;->b(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Laf;->e(I)V

    invoke-virtual {p0, v6, v4}, Laf;->b(II)V

    invoke-virtual {p0, v5, v0}, Laf;->a(ILab;)V

    invoke-virtual {p0, v4, v1}, Laf;->a(ILab;)V

    invoke-virtual {p0, v7, p1}, Laf;->a(IZ)V

    return-void
.end method
