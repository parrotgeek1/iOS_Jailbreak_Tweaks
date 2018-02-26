.class public final LJ;
.super Ljava/lang/Object;


# instance fields
.field final a:LK;

.field final b:J

.field public c:Ljava/util/Map;

.field d:Ljava/lang/String;

.field public e:Ljava/util/Map;

.field public f:Ljava/lang/String;

.field public g:Ljava/util/Map;


# direct methods
.method public constructor <init>(LK;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ;->a:LK;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, LJ;->b:J

    iput-object v2, p0, LJ;->c:Ljava/util/Map;

    iput-object v2, p0, LJ;->d:Ljava/lang/String;

    iput-object v2, p0, LJ;->e:Ljava/util/Map;

    iput-object v2, p0, LJ;->f:Ljava/lang/String;

    iput-object v2, p0, LJ;->g:Ljava/util/Map;

    return-void
.end method
