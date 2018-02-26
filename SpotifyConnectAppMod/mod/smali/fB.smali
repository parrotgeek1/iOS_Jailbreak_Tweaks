.class public final LfB;
.super Ljava/lang/Object;


# instance fields
.field public a:LfD;

.field b:Ljava/util/Map;

.field public c:Ljava/lang/Object;

.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LfB;->b:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LfB;->d:J

    sget-object v0, LfD;->c:LfD;

    iput-object v0, p0, LfB;->a:LfD;

    const-string v0, ""

    iput-object v0, p0, LfB;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LfD;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LfB;->b:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LfB;->d:J

    iput-object p1, p0, LfB;->a:LfD;

    iput-object p2, p0, LfB;->c:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, LfB;->d:J

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LfB;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v1, p0, LfB;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
