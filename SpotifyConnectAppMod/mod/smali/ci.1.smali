.class public final Lci;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:I

.field final synthetic e:Lcom/spotify/tv/android/MdnsManager;


# direct methods
.method public constructor <init>(Lcom/spotify/tv/android/MdnsManager;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lci;->e:Lcom/spotify/tv/android/MdnsManager;

    iput-object p2, p0, Lci;->a:Ljava/lang/String;

    iput p3, p0, Lci;->b:I

    iput-object p4, p0, Lci;->c:Ljava/lang/String;

    iput p5, p0, Lci;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcx;->a()V

    iget-object v0, p0, Lci;->e:Lcom/spotify/tv/android/MdnsManager;

    iget-object v1, p0, Lci;->a:Ljava/lang/String;

    iget v2, p0, Lci;->b:I

    iget-object v3, p0, Lci;->c:Ljava/lang/String;

    iget v4, p0, Lci;->d:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/spotify/tv/android/MdnsManager;->a(Lcom/spotify/tv/android/MdnsManager;Ljava/lang/String;ILjava/lang/String;I)I

    const-string v0, "MDNS has stopped. Was this on purpose?"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcx;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
