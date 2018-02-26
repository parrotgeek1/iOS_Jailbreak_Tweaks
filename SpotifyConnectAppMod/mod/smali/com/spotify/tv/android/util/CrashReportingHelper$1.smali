.class public final Lcom/spotify/tv/android/util/CrashReportingHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcw;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LbM;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Native crash detected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, LbM;->b:LbN;

    iget-object v1, v1, LbN;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcx;->a()V

    return-void
.end method
