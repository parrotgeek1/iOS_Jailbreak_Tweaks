.class public final Lfs;
.super LeS;


# direct methods
.method public constructor <init>(LcQ;Ljava/lang/String;Ljava/lang/String;LeK;)V
    .locals 6

    sget v5, LeB;->c:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, LeS;-><init>(LcQ;Ljava/lang/String;Ljava/lang/String;LeK;I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(LeV;)Z
    .locals 1

    invoke-super {p0, p1}, LeS;->a(LeV;)Z

    move-result v0

    return v0
.end method
