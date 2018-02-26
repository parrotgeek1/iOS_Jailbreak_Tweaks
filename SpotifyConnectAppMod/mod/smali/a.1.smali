.class public La;
.super LcQ;

# interfaces
.implements LcR;


# instance fields
.field public final a:Lb;

.field public final b:LS;

.field public final c:Lah;

.field public final d:Ljava/util/Collection;


# direct methods
.method public constructor <init>()V
    .locals 3

    new-instance v0, Lb;

    invoke-direct {v0}, Lb;-><init>()V

    new-instance v1, LS;

    invoke-direct {v1}, LS;-><init>()V

    new-instance v2, Lah;

    invoke-direct {v2}, Lah;-><init>()V

    invoke-direct {p0, v0, v1, v2}, La;-><init>(Lb;LS;Lah;)V

    return-void
.end method

.method private constructor <init>(Lb;LS;Lah;)V
    .locals 2

    invoke-direct {p0}, LcQ;-><init>()V

    iput-object p1, p0, La;->a:Lb;

    iput-object p2, p0, La;->b:LS;

    iput-object p3, p0, La;->c:Lah;

    const/4 v0, 0x3

    new-array v0, v0, [LcQ;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, La;->d:Ljava/util/Collection;

    return-void
.end method

.method public static d()La;
    .locals 1

    const-class v0, La;

    invoke-static {v0}, LcG;->a(Ljava/lang/Class;)LcQ;

    move-result-object v0

    check-cast v0, La;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "2.5.5.97"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.crashlytics.sdk.android:crashlytics"

    return-object v0
.end method

.method public final c()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, La;->d:Ljava/util/Collection;

    return-object v0
.end method

.method protected final bridge synthetic e()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
