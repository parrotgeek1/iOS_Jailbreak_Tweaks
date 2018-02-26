.class final Lbh;
.super Ljava/lang/Object;


# static fields
.field private static final a:LbN;

.field private static final b:[Lbr;

.field private static final c:[Lbu;

.field private static final d:[Lbo;

.field private static final e:[Lbj;

.field private static final f:[Lbk;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v3, 0x0

    new-instance v0, LbN;

    const-string v1, ""

    const-string v2, ""

    const-wide/16 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v5}, LbN;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    sput-object v0, Lbh;->a:LbN;

    new-array v0, v3, [Lbr;

    sput-object v0, Lbh;->b:[Lbr;

    new-array v0, v3, [Lbu;

    sput-object v0, Lbh;->c:[Lbu;

    new-array v0, v3, [Lbo;

    sput-object v0, Lbh;->d:[Lbo;

    new-array v0, v3, [Lbj;

    sput-object v0, Lbh;->e:[Lbj;

    new-array v0, v3, [Lbk;

    sput-object v0, Lbh;->f:[Lbk;

    return-void
.end method

.method private static a([LbK;)Lbs;
    .locals 4

    array-length v0, p0

    new-array v1, v0, [Lbk;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    new-instance v2, Lbk;

    aget-object v3, p0, v0

    invoke-direct {v2, v3}, Lbk;-><init>(LbK;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lbs;

    invoke-direct {v0, v1}, Lbs;-><init>([Lbr;)V

    return-object v0
.end method

.method private static a([LbP;)Lbs;
    .locals 4

    if-eqz p0, :cond_0

    array-length v0, p0

    new-array v0, v0, [Lbo;

    :goto_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    new-instance v2, Lbo;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lbo;-><init>(LbP;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    sget-object v0, Lbh;->d:[Lbo;

    goto :goto_0

    :cond_1
    new-instance v1, Lbs;

    invoke-direct {v1, v0}, Lbs;-><init>([Lbr;)V

    return-object v1
.end method

.method public static a(LbM;Lbc;Ljava/util/Map;Laf;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v2, v0, LbM;->b:LbN;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, LbM;->b:LbN;

    :goto_0
    new-instance v4, Lbt;

    invoke-direct {v4, v2}, Lbt;-><init>(LbN;)V

    move-object/from16 v0, p0

    iget-object v5, v0, LbM;->c:[LbO;

    if-eqz v5, :cond_1

    array-length v2, v5

    new-array v2, v2, [Lbu;

    :goto_1
    const/4 v3, 0x0

    :goto_2
    array-length v6, v2

    if-ge v3, v6, :cond_2

    aget-object v6, v5, v3

    new-instance v7, Lbu;

    iget-object v8, v6, LbO;->c:[LbP;

    invoke-static {v8}, Lbh;->a([LbP;)Lbs;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lbu;-><init>(LbO;Lbs;)V

    aput-object v7, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    sget-object v2, Lbh;->a:LbN;

    goto :goto_0

    :cond_1
    sget-object v2, Lbh;->c:[Lbu;

    goto :goto_1

    :cond_2
    new-instance v5, Lbs;

    invoke-direct {v5, v2}, Lbs;-><init>([Lbr;)V

    move-object/from16 v0, p0

    iget-object v6, v0, LbM;->d:[LbJ;

    if-eqz v6, :cond_3

    array-length v2, v6

    new-array v2, v2, [Lbj;

    :goto_3
    const/4 v3, 0x0

    :goto_4
    array-length v7, v2

    if-ge v3, v7, :cond_4

    new-instance v7, Lbj;

    aget-object v8, v6, v3

    invoke-direct {v7, v8}, Lbj;-><init>(LbJ;)V

    aput-object v7, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    sget-object v2, Lbh;->e:[Lbj;

    goto :goto_3

    :cond_4
    new-instance v3, Lbs;

    invoke-direct {v3, v2}, Lbs;-><init>([Lbr;)V

    new-instance v6, Lbn;

    invoke-direct {v6, v4, v5, v3}, Lbn;-><init>(Lbt;Lbs;Lbs;)V

    move-object/from16 v0, p0

    iget-object v3, v0, LbM;->e:[LbK;

    new-instance v4, Ljava/util/TreeMap;

    move-object/from16 v0, p2

    invoke-direct {v4, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    if-eqz v3, :cond_5

    array-length v5, v3

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v5, :cond_5

    aget-object v7, v3, v2

    iget-object v8, v7, LbK;->a:Ljava/lang/String;

    iget-object v7, v7, LbK;->b:Ljava/lang/String;

    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Ljava/util/Map$Entry;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/util/Map$Entry;

    array-length v3, v2

    new-array v7, v3, [LbK;

    const/4 v3, 0x0

    move v5, v3

    :goto_6
    array-length v3, v7

    if-ge v5, v3, :cond_6

    new-instance v8, LbK;

    aget-object v3, v2, v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aget-object v4, v2, v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v8, v3, v4}, LbK;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v8, v7, v5

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_6

    :cond_6
    invoke-static {v7}, Lbh;->a([LbK;)Lbs;

    move-result-object v2

    new-instance v12, Lbi;

    invoke-direct {v12, v6, v2}, Lbi;-><init>(Lbn;Lbs;)V

    move-object/from16 v0, p0

    iget-object v2, v0, LbM;->f:LbL;

    new-instance v3, Lbl;

    iget v4, v2, LbL;->f:I

    int-to-float v4, v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    iget v5, v2, LbL;->g:I

    iget-boolean v6, v2, LbL;->h:Z

    iget v7, v2, LbL;->a:I

    iget-wide v8, v2, LbL;->b:J

    iget-wide v10, v2, LbL;->d:J

    sub-long/2addr v8, v10

    iget-wide v10, v2, LbL;->c:J

    iget-wide v14, v2, LbL;->e:J

    sub-long/2addr v10, v14

    invoke-direct/range {v3 .. v11}, Lbl;-><init>(FIZIJJ)V

    invoke-virtual/range {p1 .. p1}, Lbc;->a()Lab;

    move-result-object v4

    if-nez v4, :cond_7

    invoke-static {}, LcG;->a()LcT;

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lbc;->b()V

    if-eqz v4, :cond_8

    new-instance v2, Lbp;

    invoke-direct {v2, v4}, Lbp;-><init>(Lab;)V

    :goto_7
    new-instance v4, Lbm;

    move-object/from16 v0, p0

    iget-wide v6, v0, LbM;->a:J

    const-string v5, "ndk-crash"

    const/4 v8, 0x3

    new-array v8, v8, [Lbr;

    const/4 v9, 0x0

    aput-object v12, v8, v9

    const/4 v9, 0x1

    aput-object v3, v8, v9

    const/4 v3, 0x2

    aput-object v2, v8, v3

    invoke-direct {v4, v6, v7, v5, v8}, Lbm;-><init>(JLjava/lang/String;[Lbr;)V

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lbm;->b(Laf;)V

    return-void

    :cond_8
    new-instance v2, Lbq;

    invoke-direct {v2}, Lbq;-><init>()V

    goto :goto_7
.end method

.method static synthetic a()[Lbr;
    .locals 1

    sget-object v0, Lbh;->b:[Lbr;

    return-object v0
.end method
