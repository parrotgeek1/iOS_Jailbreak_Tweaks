.class final Lbg;
.super Lorg/json/JSONObject;


# instance fields
.field final synthetic a:LbF;


# direct methods
.method constructor <init>(LbF;)V
    .locals 2

    iput-object p1, p0, Lbg;->a:LbF;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "userId"

    iget-object v1, p0, Lbg;->a:LbF;

    iget-object v1, v1, LbF;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lbg;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "userName"

    iget-object v1, p0, Lbg;->a:LbF;

    iget-object v1, v1, LbF;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lbg;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "userEmail"

    iget-object v1, p0, Lbg;->a:LbF;

    iget-object v1, v1, LbF;->d:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lbg;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method
