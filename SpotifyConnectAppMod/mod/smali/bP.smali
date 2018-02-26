.class public final LbP;
.super Ljava/lang/Object;


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:I


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, LbP;->a:J

    iput-object p3, p0, LbP;->b:Ljava/lang/String;

    iput-object p4, p0, LbP;->c:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LbP;->d:J

    iput p5, p0, LbP;->e:I

    return-void
.end method
