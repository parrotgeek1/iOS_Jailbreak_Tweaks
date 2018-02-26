.class public final LfA;
.super Ljava/lang/Object;


# instance fields
.field public a:LfC;

.field b:Lfz;

.field public c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field public f:Ljava/util/Map;

.field public g:Ljava/util/Map;

.field private h:Ljava/util/Map;

.field private i:Ljava/util/Map;


# direct methods
.method public constructor <init>(LfC;Lfz;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LfA;->a:LfC;

    iput-object p2, p0, LfA;->b:Lfz;

    iput-object p3, p0, LfA;->c:Ljava/lang/String;

    iput-object p4, p0, LfA;->h:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfx;

    iget-object v3, v0, Lfx;->a:Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object v1, p0, LfA;->i:Ljava/util/Map;

    return-void
.end method

.method public final finalize()V
    .locals 3

    iget-object v0, p0, LfA;->g:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, LfA;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lfy;

    if-eqz v2, :cond_0

    check-cast v0, Lfy;

    iget-object v2, v0, Lfy;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v0, Lfy;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    goto :goto_0

    :cond_1
    return-void
.end method
