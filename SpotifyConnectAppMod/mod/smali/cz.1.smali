.class public final Lcz;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)V
    .locals 4

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "Unknown"

    :goto_0
    invoke-static {}, Lb;->c()Lb;

    move-result-object v1

    new-instance v2, Lt;

    const-string v3, "Playback Event"

    invoke-direct {v2, v3}, Lt;-><init>(Ljava/lang/String;)V

    const-string v3, "Type"

    invoke-virtual {v2, v3, v0}, Lt;->a(Ljava/lang/String;Ljava/lang/String;)Ld;

    move-result-object v0

    check-cast v0, Lt;

    invoke-virtual {v1, v0}, Lb;->a(Lt;)V

    return-void

    :pswitch_1
    const-string v0, "Play"

    goto :goto_0

    :pswitch_2
    const-string v0, "Pause"

    goto :goto_0

    :pswitch_3
    const-string v0, "Volume"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 6

    const/4 v5, 0x0

    invoke-static {}, Lb;->c()Lb;

    move-result-object v0

    new-instance v1, Ly;

    invoke-direct {v1}, Ly;-><init>()V

    iget-object v2, v1, Ly;->c:Lc;

    const-string v3, "method"

    invoke-virtual {v2, v3, p0}, Lc;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Ly;->c:Lc;

    const-string v3, "success"

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lc;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lb;->a:LG;

    if-eqz v2, :cond_0

    iget-object v0, v0, Lb;->a:LG;

    invoke-static {}, LcG;->a()LcT;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Logged predefined event: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, v0, LG;->b:Lf;

    new-instance v2, LJ;

    sget-object v3, LK;->h:LK;

    invoke-direct {v2, v3}, LJ;-><init>(LK;)V

    invoke-virtual {v1}, Lz;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, LJ;->f:Ljava/lang/String;

    iget-object v3, v1, Lz;->c:Lc;

    iget-object v3, v3, Lc;->b:Ljava/util/Map;

    iput-object v3, v2, LJ;->g:Ljava/util/Map;

    iget-object v1, v1, Ld;->b:Lc;

    iget-object v1, v1, Lc;->b:Ljava/util/Map;

    iput-object v1, v2, LJ;->e:Ljava/util/Map;

    invoke-virtual {v0, v2, v5, v5}, Lf;->a(LJ;ZZ)V

    :cond_0
    return-void
.end method

.method public static a(Z)V
    .locals 4

    invoke-static {}, Lb;->c()Lb;

    move-result-object v1

    new-instance v2, Lt;

    const-string v0, "Audio Focus Change"

    invoke-direct {v2, v0}, Lt;-><init>(Ljava/lang/String;)V

    const-string v3, "Type"

    if-eqz p0, :cond_0

    const-string v0, "Gained"

    :goto_0
    invoke-virtual {v2, v3, v0}, Lt;->a(Ljava/lang/String;Ljava/lang/String;)Ld;

    move-result-object v0

    check-cast v0, Lt;

    invoke-virtual {v1, v0}, Lb;->a(Lt;)V

    return-void

    :cond_0
    const-string v0, "Lost"

    goto :goto_0
.end method

.method public static b(Z)V
    .locals 4

    invoke-static {}, Lb;->c()Lb;

    move-result-object v1

    new-instance v2, Lt;

    const-string v0, "App Foreground Change"

    invoke-direct {v2, v0}, Lt;-><init>(Ljava/lang/String;)V

    const-string v3, "Type"

    if-eqz p0, :cond_0

    const-string v0, "Foreground"

    :goto_0
    invoke-virtual {v2, v3, v0}, Lt;->a(Ljava/lang/String;Ljava/lang/String;)Ld;

    move-result-object v0

    check-cast v0, Lt;

    invoke-virtual {v1, v0}, Lb;->a(Lt;)V

    return-void

    :cond_0
    const-string v0, "Background"

    goto :goto_0
.end method
