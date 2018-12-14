.class final Lcom/flurry/sdk/bp$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/cw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/cw<",
        "Lcom/flurry/sdk/ed;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/bp;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/bp;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/flurry/sdk/bp$10;->a:Lcom/flurry/sdk/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/cv;)V
    .locals 8

    .line 162
    check-cast p1, Lcom/flurry/sdk/ed;

    .line 1165
    iget-object v0, p0, Lcom/flurry/sdk/bp$10;->a:Lcom/flurry/sdk/bp;

    invoke-static {v0}, Lcom/flurry/sdk/bp;->a(Lcom/flurry/sdk/bp;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/flurry/sdk/ed;->b:Lcom/flurry/sdk/ec;

    iget-object v1, p0, Lcom/flurry/sdk/bp$10;->a:Lcom/flurry/sdk/bp;

    invoke-static {v1}, Lcom/flurry/sdk/bp;->a(Lcom/flurry/sdk/bp;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 1169
    :cond_0
    sget-object v0, Lcom/flurry/sdk/bp$9;->a:[I

    iget v1, p1, Lcom/flurry/sdk/ed;->d:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1183
    :pswitch_0
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.FlurrySessionEvent"

    iget-object v2, p0, Lcom/flurry/sdk/bp$10;->a:Lcom/flurry/sdk/bp;

    .line 1184
    invoke-static {v2}, Lcom/flurry/sdk/bp;->b(Lcom/flurry/sdk/bp;)Lcom/flurry/sdk/cw;

    move-result-object v2

    .line 1183
    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/cx;->b(Ljava/lang/String;Lcom/flurry/sdk/cw;)V

    .line 1186
    iget-object v0, p0, Lcom/flurry/sdk/bp$10;->a:Lcom/flurry/sdk/bp;

    iget-wide v1, p1, Lcom/flurry/sdk/ed;->e:J

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/bp;->a(J)V

    goto/16 :goto_0

    .line 1179
    :pswitch_1
    iget-object v0, p0, Lcom/flurry/sdk/bp$10;->a:Lcom/flurry/sdk/bp;

    iget-object p1, p1, Lcom/flurry/sdk/ed;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/flurry/sdk/bp;->b()V

    return-void

    .line 1175
    :pswitch_2
    iget-object v0, p0, Lcom/flurry/sdk/bp$10;->a:Lcom/flurry/sdk/bp;

    iget-object p1, p1, Lcom/flurry/sdk/ed;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/flurry/sdk/bp;->a()V

    return-void

    .line 1171
    :pswitch_3
    iget-object v0, p0, Lcom/flurry/sdk/bp$10;->a:Lcom/flurry/sdk/bp;

    iget-object v1, p1, Lcom/flurry/sdk/ed;->b:Lcom/flurry/sdk/ec;

    iget-object p1, p1, Lcom/flurry/sdk/ed;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 1199
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v0, Lcom/flurry/sdk/bp;->g:Ljava/lang/ref/WeakReference;

    .line 1201
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/eh;

    move-result-object v3

    const-string v4, "LogEvents"

    .line 1203
    invoke-virtual {v3, v4}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v0, Lcom/flurry/sdk/bp;->k:Z

    const-string v4, "LogEvents"

    .line 1204
    invoke-virtual {v3, v4, v0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Lcom/flurry/sdk/ei$a;)V

    .line 1205
    sget-object v4, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "initSettings, LogEvents = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, v0, Lcom/flurry/sdk/bp;->k:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-static {v6, v4, v5}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string v4, "UserId"

    .line 1207
    invoke-virtual {v3, v4}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lcom/flurry/sdk/bp;->l:Ljava/lang/String;

    const-string v4, "UserId"

    .line 1208
    invoke-virtual {v3, v4, v0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Lcom/flurry/sdk/ei$a;)V

    .line 1209
    sget-object v4, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "initSettings, UserId = "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/flurry/sdk/bp;->l:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string v4, "Gender"

    .line 1211
    invoke-virtual {v3, v4}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    iput-byte v4, v0, Lcom/flurry/sdk/bp;->m:B

    const-string v4, "Gender"

    .line 1212
    invoke-virtual {v3, v4, v0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Lcom/flurry/sdk/ei$a;)V

    .line 1213
    sget-object v4, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "initSettings, Gender = "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v7, v0, Lcom/flurry/sdk/bp;->m:B

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string v4, "Age"

    .line 1215
    invoke-virtual {v3, v4}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    iput-object v4, v0, Lcom/flurry/sdk/bp;->n:Ljava/lang/Long;

    const-string v4, "Age"

    .line 1216
    invoke-virtual {v3, v4, v0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Lcom/flurry/sdk/ei$a;)V

    .line 1217
    sget-object v4, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "initSettings, BirthDate = "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/flurry/sdk/bp;->n:Ljava/lang/Long;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v4, v5}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string v4, "analyticsEnabled"

    .line 1219
    invoke-virtual {v3, v4}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v0, Lcom/flurry/sdk/bp;->p:Z

    const-string v4, "analyticsEnabled"

    .line 1220
    invoke-virtual {v3, v4, v0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Lcom/flurry/sdk/ei$a;)V

    .line 1221
    sget-object v3, Lcom/flurry/sdk/bp;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initSettings, AnalyticsEnabled = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v0, Lcom/flurry/sdk/bp;->p:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v3, v4}, Lcom/flurry/sdk/dc;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1416
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ".flurryagent."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1417
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v4

    .line 2075
    iget-object v4, v4, Lcom/flurry/sdk/cl;->b:Ljava/lang/String;

    .line 1417
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1223
    invoke-virtual {p1, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    iput-object v3, v0, Lcom/flurry/sdk/bp;->h:Ljava/io/File;

    .line 1225
    new-instance v3, Lcom/flurry/sdk/cu;

    .line 2421
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, ".yflurryreport."

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2422
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object v6

    .line 3075
    iget-object v6, v6, Lcom/flurry/sdk/cl;->b:Ljava/lang/String;

    .line 2422
    invoke-static {v6}, Lcom/flurry/sdk/en;->g(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7, v5}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1226
    invoke-virtual {p1, v4}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string v5, ".yflurryreport."

    new-instance v6, Lcom/flurry/sdk/bp$11;

    invoke-direct {v6, v0}, Lcom/flurry/sdk/bp$11;-><init>(Lcom/flurry/sdk/bp;)V

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/flurry/sdk/cu;-><init>(Ljava/io/File;Ljava/lang/String;ILcom/flurry/sdk/ea;)V

    iput-object v3, v0, Lcom/flurry/sdk/bp;->i:Lcom/flurry/sdk/cu;

    .line 1237
    invoke-virtual {v1}, Lcom/flurry/sdk/ec;->a()Z

    move-result v1

    iput-boolean v1, v0, Lcom/flurry/sdk/bp;->o:Z

    .line 1239
    invoke-virtual {v0, p1}, Lcom/flurry/sdk/bp;->a(Landroid/content/Context;)V

    .line 1240
    invoke-virtual {v0, v2}, Lcom/flurry/sdk/bp;->a(Z)V

    .line 1244
    invoke-static {}, Lcom/flurry/sdk/y;->a()Lcom/flurry/sdk/y;

    move-result-object p1

    .line 3144
    iget-object p1, p1, Lcom/flurry/sdk/y;->a:Lcom/flurry/sdk/at;

    if-eqz p1, :cond_1

    .line 1245
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object p1

    new-instance v1, Lcom/flurry/sdk/bp$12;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/bp$12;-><init>(Lcom/flurry/sdk/bp;)V

    invoke-virtual {p1, v1}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V

    .line 1254
    :cond_1
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object p1

    new-instance v1, Lcom/flurry/sdk/bp$13;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/bp$13;-><init>(Lcom/flurry/sdk/bp;)V

    invoke-virtual {p1, v1}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V

    .line 1261
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object p1

    new-instance v1, Lcom/flurry/sdk/bp$14;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/bp$14;-><init>(Lcom/flurry/sdk/bp;)V

    invoke-virtual {p1, v1}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V

    .line 1269
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object p1

    new-instance v1, Lcom/flurry/sdk/bp$15;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/bp$15;-><init>(Lcom/flurry/sdk/bp;)V

    invoke-virtual {p1, v1}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V

    .line 1278
    invoke-static {}, Lcom/flurry/sdk/bt;->a()Lcom/flurry/sdk/bt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/flurry/sdk/bt;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1279
    invoke-static {}, Lcom/flurry/sdk/cl;->a()Lcom/flurry/sdk/cl;

    move-result-object p1

    new-instance v1, Lcom/flurry/sdk/bp$16;

    invoke-direct {v1, v0}, Lcom/flurry/sdk/bp$16;-><init>(Lcom/flurry/sdk/bp;)V

    invoke-virtual {p1, v1}, Lcom/flurry/sdk/cl;->b(Ljava/lang/Runnable;)V

    return-void

    .line 1287
    :cond_2
    invoke-static {}, Lcom/flurry/sdk/cx;->a()Lcom/flurry/sdk/cx;

    move-result-object p1

    const-string v1, "com.flurry.android.sdk.IdProviderFinishedEvent"

    iget-object v0, v0, Lcom/flurry/sdk/bp;->q:Lcom/flurry/sdk/cw;

    .line 1288
    invoke-virtual {p1, v1, v0}, Lcom/flurry/sdk/cx;->a(Ljava/lang/String;Lcom/flurry/sdk/cw;)V

    return-void

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
