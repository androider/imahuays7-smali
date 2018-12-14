.class public Lcom/mh/movie/core/mvp/ui/widget/cache/g;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;
    }
.end annotation


# static fields
.field public static a:I = 0x1e

.field public static b:I = 0x400

.field public static c:I = 0x0

.field private static n:Lcom/mh/movie/core/mvp/ui/widget/cache/g; = null

.field private static o:Z = false


# instance fields
.field public d:I

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mh/movie/core/mvp/model/entity/DownloadData;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mh/movie/core/mvp/model/entity/DownloadData;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mh/movie/core/mvp/model/entity/TimerBean;",
            ">;"
        }
    .end annotation
.end field

.field public i:Z

.field public j:I

.field public k:Z

.field l:Z

.field private m:Landroid/content/Context;

.field private p:Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 74
    iput v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->d:I

    .line 77
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    .line 79
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->f:Ljava/util/Map;

    .line 81
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    .line 83
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->h:Ljava/util/Map;

    .line 85
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->i:Z

    const/4 v1, 0x0

    .line 87
    iput v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->j:I

    .line 88
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->k:Z

    .line 1352
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->l:Z

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/mvp/ui/widget/cache/g;)Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->p:Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;

    return-object p0
.end method

.method public static a()Lcom/mh/movie/core/mvp/ui/widget/cache/g;
    .locals 1

    .line 44
    sget-object v0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->n:Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    invoke-direct {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;-><init>()V

    sput-object v0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->n:Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    .line 47
    :cond_0
    sget-object v0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->n:Lcom/mh/movie/core/mvp/ui/widget/cache/g;

    return-object v0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 8

    .line 1226
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1227
    instance-of v4, v3, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    if-eqz v4, :cond_1

    .line 1228
    move-object v4, v3

    check-cast v4, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDownloadSize()J

    move-result-wide v4

    add-long v6, v1, v4

    move-wide v1, v6

    .line 1230
    :cond_1
    instance-of v4, v3, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

    if-eqz v4, :cond_0

    .line 1231
    check-cast v3, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->getTvList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;

    .line 1232
    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->getDownloadSize()J

    move-result-wide v4

    add-long v6, v1, v4

    move-wide v1, v6

    goto :goto_0

    .line 1236
    :cond_2
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    .line 1237
    invoke-virtual {v3}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDownloadSize()J

    move-result-wide v3

    add-long v5, v1, v3

    move-wide v1, v5

    goto :goto_1

    :cond_3
    long-to-double v3, v1

    const-wide v5, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, v3, v5

    if-gez v0, :cond_4

    const-string v0, "0"

    return-object v0

    .line 1242
    :cond_4
    invoke-static {v1, v2}, Lcom/mh/movie/core/mvp/ui/utils/CommonTools;->Byte2Gigabyte(J)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 5

    .line 543
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, v0, :cond_5

    .line 544
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->w()Ljava/util/List;

    move-result-object v0

    .line 545
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 546
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    .line 547
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/utils/Md5Util;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 549
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 550
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 551
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_0

    .line 552
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_0

    .line 553
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 554
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 556
    :cond_0
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result v3

    if-ne v3, v1, :cond_3

    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 558
    :cond_1
    invoke-static {}, Lcom/mh/movie/core/b/f;->a()Lcom/mh/movie/core/b/f;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/mh/movie/core/b/f;->a(Ljava/lang/String;Lcom/mh/movie/core/mvp/model/entity/DownloadData;)I

    move-result v3

    if-nez v3, :cond_2

    .line 560
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setDowloadState(I)V

    const-wide/16 v3, 0x0

    .line 561
    invoke-virtual {v0, v3, v4}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setSpeed(J)V

    .line 562
    iget-object v3, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 566
    :cond_2
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e(Lcom/mh/movie/core/mvp/model/entity/DownloadData;)V

    :goto_0
    add-int/2addr p1, v1

    .line 570
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a(I)V

    goto :goto_1

    :cond_3
    add-int/2addr p1, v1

    .line 573
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a(I)V

    :goto_1
    return-void

    .line 576
    :cond_4
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->i:Z

    return-void

    .line 580
    :cond_5
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->i:Z

    return-void
.end method

.method public a(III)V
    .locals 8

    .line 1171
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->f:Ljava/util/Map;

    int-to-long v2, p2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1173
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->f:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    if-eqz p2, :cond_0

    .line 1174
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->f:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    .line 1175
    invoke-virtual {p2, p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setWatchSize(I)V

    int-to-long v0, p3

    .line 1177
    invoke-static {v2, v3, v0, v1, p1}, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->updataWatchSizeDB(JJI)Z

    goto :goto_1

    .line 1179
    :cond_0
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->f:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of p2, p2, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

    if-eqz p2, :cond_2

    .line 1180
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->f:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

    .line 1181
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->getTvList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;

    .line 1182
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->getVideoId()J

    move-result-wide v4

    int-to-long v6, p3

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    .line 1183
    invoke-virtual {v0, p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->setWatchSize(I)V

    .line 1184
    invoke-static {v2, v3, v6, v7, p1}, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->updataWatchSizeDB(JJI)Z

    goto :goto_0

    .line 1189
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->p:Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;

    if-eqz p2, :cond_3

    .line 1190
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->p:Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;

    int-to-long v4, p3

    move v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;->a(JJI)V

    :cond_3
    return-void
.end method

.method public a(ILcom/mh/movie/core/mvp/model/entity/DownloadData;Landroid/content/Context;)V
    .locals 2

    .line 735
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 738
    :cond_0
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 762
    :pswitch_0
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->j:I

    if-nez v0, :cond_1

    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->isDownloadWithoutWifi()Z

    move-result v0

    if-nez v0, :cond_1

    .line 763
    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;

    const/4 v1, 0x1

    invoke-direct {v0, p3, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;-><init>(Landroid/content/Context;I)V

    const-string v1, "\u6e29\u99a8\u63d0\u793a"

    .line 764
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Ljava/lang/String;)V

    const-string v1, "\u5f53\u524d\u4e3a\u975eWiFi\u73af\u5883\uff0c\u60a8\u5df2\u8bbe\u7f6e\u8be5\u72b6\u6001\u4e0d\u5141\u8bb8\u7f13\u5b58\u3002\u5982\u4ecd\u9700\u7f13\u5b58\u8bf7\u5728\"\u8bbe\u7f6e\"\u4e2d\u66f4\u6539"

    .line 765
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->b(Ljava/lang/String;)V

    const-string v1, "\u4ec5Wi-Fi\u4e0b\u7f13\u5b58"

    .line 766
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->e(Ljava/lang/String;)V

    const-string v1, "\u66f4\u6539\u8bbe\u7f6e"

    .line 767
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->d(Ljava/lang/String;)V

    .line 768
    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/cache/g$3;

    invoke-direct {v1, p0, p3, v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g$3;-><init>(Lcom/mh/movie/core/mvp/ui/widget/cache/g;Landroid/content/Context;Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;)V

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->a(Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog$a;)V

    .line 780
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/widget/dialog/RequestPermissionDialog;->show()V

    goto :goto_0

    .line 782
    :cond_1
    invoke-virtual {p0, p2}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->f(Lcom/mh/movie/core/mvp/model/entity/DownloadData;)V

    goto :goto_0

    .line 750
    :pswitch_1
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->j()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 751
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->m:Landroid/content/Context;

    const-string v0, "\u7f13\u5b58\u7a7a\u95f4\u4e0d\u8db3"

    invoke-static {p3, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 752
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->u()V

    goto :goto_0

    .line 753
    :cond_2
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->i()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 754
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->m:Landroid/content/Context;

    const-string v0, "\u5f53\u524d\u65e0\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc!"

    invoke-static {p3, v0}, Lcom/mh/movie/core/mvp/ui/utils/T;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 756
    :cond_3
    invoke-virtual {p0, p2}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->f(Lcom/mh/movie/core/mvp/model/entity/DownloadData;)V

    goto :goto_0

    .line 741
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g(Lcom/mh/movie/core/mvp/model/entity/DownloadData;)V

    .line 786
    :goto_0
    :pswitch_3
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->p:Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-interface {p3, p1, p2}, Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;->a(ILcom/mh/movie/core/mvp/model/entity/DownloadData;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(JLjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/DownloadTV;",
            ">;)V"
        }
    .end annotation

    .line 1047
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->f:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1048
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->f:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

    .line 1049
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->getTvList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1050
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->getTvList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;

    .line 1051
    invoke-static {}, Lcom/mh/movie/core/b/f;->a()Lcom/mh/movie/core/b/f;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mh/movie/core/b/f;->a(Ljava/lang/String;)V

    .line 1052
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->getVideoId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->deleteData(Ljava/lang/String;)J

    goto :goto_0

    .line 1054
    :cond_0
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->f:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1056
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;

    const/4 v2, 0x0

    .line 1057
    :goto_2
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->getTvList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1058
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->getVideoId()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->getTvList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;

    invoke-virtual {v5}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->getVideoId()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    .line 1059
    invoke-static {}, Lcom/mh/movie/core/b/f;->a()Lcom/mh/movie/core/b/f;

    move-result-object v3

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->getTvList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;

    invoke-virtual {v4}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->getVideoUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mh/movie/core/b/f;->a(Ljava/lang/String;)V

    .line 1060
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->getTvList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1061
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->getVideoId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->deleteData(Ljava/lang/String;)J

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1068
    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->p:Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;

    if-eqz p1, :cond_5

    .line 1069
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->p:Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;->c()V

    :cond_5
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->m:Landroid/content/Context;

    .line 100
    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/NetStateUtils;->getNetWorkStates(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->j:I

    .line 101
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->n()V

    .line 102
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->d()Z

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/DownloadData;)V
    .locals 4

    .line 249
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

    invoke-direct {v0, p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;-><init>(Lcom/mh/movie/core/mvp/model/entity/DownloadData;)V

    .line 250
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 251
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->f:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->getVideoInfoId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoInfoId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    new-instance v0, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;

    invoke-direct {v0, p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;-><init>(Lcom/mh/movie/core/mvp/model/entity/DownloadData;)V

    .line 255
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoInfoId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

    if-eqz v1, :cond_2

    .line 256
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoInfoId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->getTvList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoInfoId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->getTvList()Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/mh/movie/core/mvp/ui/widget/cache/g$1;

    invoke-direct {v0, p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g$1;-><init>(Lcom/mh/movie/core/mvp/ui/widget/cache/g;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 265
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->f:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->getVideoInfoId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->p:Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 1027
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    .line 1029
    invoke-static {}, Lcom/mh/movie/core/b/f;->a()Lcom/mh/movie/core/b/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mh/movie/core/b/f;->a(Ljava/lang/String;)V

    .line 1030
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/Md5Util;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1032
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->p:Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;

    if-eqz p1, :cond_1

    .line 1037
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->p:Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;->b()V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    .line 591
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 592
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    .line 594
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 595
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    :cond_0
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-ltz p2, :cond_1

    .line 604
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setDowloadState(I)V

    goto :goto_0

    .line 606
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setDowloadState(I)V

    .line 607
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->m()V

    .line 609
    :goto_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->q()V

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 4

    .line 620
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    .line 622
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDownloadSize()J

    move-result-wide v0

    sub-long v2, p2, v0

    .line 624
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {v0, v2, v3}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setSpeed(J)V

    .line 625
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {p1, p2, p3}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setDownloadSize(J)V

    .line 629
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sget p3, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->c:I

    int-to-long v0, p3

    sub-long v2, p1, v0

    const-wide/16 p1, 0x2710

    cmp-long p3, v2, p1

    if-lez p3, :cond_1

    .line 630
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 631
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->u()V

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 680
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 681
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    .line 682
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 684
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    const/4 v1, 0x1

    .line 685
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setFinish(Z)V

    const/4 v2, 0x4

    .line 686
    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setDowloadState(I)V

    .line 687
    invoke-virtual {v0, p2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setLocalUrl(Ljava/lang/String;)V

    .line 688
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-virtual {p3}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getType()I

    move-result p2

    if-ne p2, v1, :cond_0

    .line 690
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->f:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoInfoId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 692
    :cond_0
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a(Lcom/mh/movie/core/mvp/model/entity/DownloadData;)V

    .line 695
    :goto_0
    new-instance p2, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;

    invoke-direct {p2}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;-><init>()V

    const-string v0, "download"

    .line 696
    invoke-virtual {p2, v0}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->setType(Ljava/lang/String;)V

    const-string v0, "completeDownload"

    .line 697
    invoke-virtual {p2, v0}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->setSecondaryType(Ljava/lang/String;)V

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->setVideoType(Ljava/lang/String;)V

    .line 699
    invoke-virtual {p3}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoId()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->setVideoId(I)V

    .line 700
    invoke-virtual {p3}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoInfoId()J

    move-result-wide v0

    long-to-int p3, v0

    invoke-virtual {p2, p3}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->setVideoInfoId(I)V

    .line 701
    invoke-static {p2}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->b(Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;)V

    .line 703
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 704
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    :cond_1
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->m()V

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 640
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 641
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    .line 642
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 643
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {p3}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result p3

    const/4 v0, 0x6

    if-eq p3, v0, :cond_2

    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    .line 644
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {p3}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result p3

    const/16 v0, 0x8

    if-eq p3, v0, :cond_2

    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    .line 645
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {p3}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result p3

    const/4 v0, 0x7

    if-eq p3, v0, :cond_2

    if-ltz p4, :cond_0

    .line 648
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {p3, p4}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setDowloadState(I)V

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    if-ne p4, p3, :cond_1

    .line 650
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    const/4 p4, 0x2

    invoke-virtual {p3, p4}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setDowloadState(I)V

    goto :goto_0

    .line 652
    :cond_1
    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    const/4 p4, 0x3

    invoke-virtual {p3, p4}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setDowloadState(I)V

    .line 657
    :cond_2
    :goto_0
    new-instance p3, Lcom/mh/movie/core/mvp/model/db/WatchCauseEvent;

    invoke-direct {p3}, Lcom/mh/movie/core/mvp/model/db/WatchCauseEvent;-><init>()V

    const-string p4, "download"

    .line 658
    invoke-virtual {p3, p4}, Lcom/mh/movie/core/mvp/model/db/WatchCauseEvent;->setType(Ljava/lang/String;)V

    const-string p4, "failDownload"

    .line 659
    invoke-virtual {p3, p4}, Lcom/mh/movie/core/mvp/model/db/WatchCauseEvent;->setSecondaryType(Ljava/lang/String;)V

    .line 660
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getType()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/mh/movie/core/mvp/model/db/WatchCauseEvent;->setVideoType(Ljava/lang/String;)V

    .line 661
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoId()J

    move-result-wide v0

    long-to-int p4, v0

    invoke-virtual {p3, p4}, Lcom/mh/movie/core/mvp/model/db/WatchCauseEvent;->setVideoId(I)V

    .line 662
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoInfoId()J

    move-result-wide v0

    long-to-int p2, v0

    invoke-virtual {p3, p2}, Lcom/mh/movie/core/mvp/model/db/WatchCauseEvent;->setVideoInfoId(I)V

    const-string p2, "2"

    .line 663
    invoke-virtual {p3, p2}, Lcom/mh/movie/core/mvp/model/db/WatchCauseEvent;->setCause(Ljava/lang/String;)V

    .line 664
    invoke-static {p3}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->b(Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;)V

    .line 666
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 667
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    :cond_3
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->m()V

    :cond_4
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "error:"

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load watch size error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a(Ljava/util/List;Z)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/DownloadData;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 439
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 440
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    .line 442
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoInfoId()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoId()J

    move-result-wide v4

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 446
    :cond_2
    sget-object v2, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->isDownloadWithoutWifi()Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->j:I

    if-nez v2, :cond_3

    const/4 v2, 0x6

    .line 447
    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setDowloadState(I)V

    goto :goto_1

    .line 448
    :cond_3
    iget v2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->j:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    const/4 v2, 0x7

    .line 449
    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setDowloadState(I)V

    goto :goto_1

    .line 450
    :cond_4
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->j()Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x8

    .line 451
    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setDowloadState(I)V

    .line 454
    :cond_5
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    new-instance v2, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;

    invoke-direct {v2}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;-><init>()V

    const-string v3, "download"

    .line 458
    invoke-virtual {v2, v3}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->setType(Ljava/lang/String;)V

    const-string v3, "startDownload"

    .line 459
    invoke-virtual {v2, v3}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->setSecondaryType(Ljava/lang/String;)V

    .line 460
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->setVideoType(Ljava/lang/String;)V

    .line 461
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoId()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v2, v3}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->setVideoId(I)V

    .line 462
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoInfoId()J

    move-result-wide v3

    long-to-int v1, v3

    invoke-virtual {v2, v1}, Lcom/mh/movie/core/mvp/model/db/WatchAnalysisEvent;->setVideoInfoId(I)V

    .line 463
    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->b(Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;)V

    goto/16 :goto_0

    .line 466
    :cond_6
    invoke-static {}, Lcom/mh/movie/core/b/f;->a()Lcom/mh/movie/core/b/f;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/b/f;->a(Ljava/util/List;)V

    .line 468
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->l()V

    .line 469
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->q()V

    return-void
.end method

.method public a(Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 1275
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->w()Ljava/util/List;

    move-result-object v0

    .line 1276
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1277
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-le p2, v1, :cond_1

    .line 1278
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->l()V

    .line 1279
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->q()V

    goto :goto_1

    .line 1280
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_2

    const/4 v1, 0x0

    .line 1281
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, p2

    if-ge v1, v2, :cond_2

    .line 1282
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {p0, v2}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->h(Lcom/mh/movie/core/mvp/model/entity/DownloadData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;",
            ">;Z)V"
        }
    .end annotation

    .line 178
    invoke-static {}, Lcom/mh/movie/core/b/f;->a()Lcom/mh/movie/core/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mh/movie/core/b/f;->c()Ljava/util/List;

    move-result-object v0

    .line 180
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 181
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    .line 182
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;

    .line 183
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v4, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 184
    iget v3, v4, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->watchSize:I

    invoke-virtual {v2, v3}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setWatchSize(I)V

    goto :goto_0

    .line 191
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    .line 192
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 193
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 194
    invoke-static {}, Lcom/mh/movie/core/b/f;->a()Lcom/mh/movie/core/b/f;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mh/movie/core/b/f;->a(Ljava/lang/String;)V

    .line 196
    :cond_4
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->isFinish()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 197
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 198
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->f:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoInfoId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 200
    :cond_5
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a(Lcom/mh/movie/core/mvp/model/entity/DownloadData;)V

    goto :goto_1

    .line 204
    :cond_6
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    .line 205
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setDowloadState(I)V

    .line 206
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->j()Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    .line 207
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setDowloadState(I)V

    goto :goto_2

    .line 208
    :cond_7
    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->isDownloadWithoutWifi()Z

    move-result v1

    if-nez v1, :cond_8

    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->j:I

    if-nez v1, :cond_8

    const/4 v1, 0x6

    .line 209
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setDowloadState(I)V

    goto :goto_2

    .line 210
    :cond_8
    iget v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->j:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_9

    const/4 v1, 0x7

    .line 211
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setDowloadState(I)V

    .line 213
    :cond_9
    :goto_2
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_a
    if-eqz p2, :cond_b

    .line 219
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->p:Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;

    if-eqz p1, :cond_b

    .line 220
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->p:Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;->e()V

    :cond_b
    return-void
.end method

.method public a(JJ)Z
    .locals 4

    .line 1101
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->f:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1102
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->f:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1105
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->f:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

    if-eqz v0, :cond_2

    .line 1106
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->f:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->getTvList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;

    .line 1107
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->getVideoId()J

    move-result-wide v2

    cmp-long p2, v2, p3

    if-nez p2, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/String;)I
    .locals 1

    .line 1079
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getProgressValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(I)V
    .locals 0

    .line 871
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->j:I

    .line 872
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->s()V

    return-void
.end method

.method public b(Lcom/mh/movie/core/mvp/model/entity/DownloadData;)V
    .locals 4

    .line 477
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 478
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 479
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    .line 480
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 481
    invoke-virtual {v0, v2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setDowloadState(I)V

    .line 483
    :cond_0
    invoke-static {}, Lcom/mh/movie/core/b/f;->a()Lcom/mh/movie/core/b/f;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/mh/movie/core/b/f;->a(Ljava/lang/String;Lcom/mh/movie/core/mvp/model/entity/DownloadData;)I

    move-result v2

    if-nez v2, :cond_1

    .line 486
    invoke-virtual {v0, v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setDowloadState(I)V

    const-wide/16 v2, 0x0

    .line 487
    invoke-virtual {v0, v2, v3}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setSpeed(J)V

    .line 488
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/Md5Util;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 494
    :cond_1
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e(Lcom/mh/movie/core/mvp/model/entity/DownloadData;)V

    .line 498
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->i:Z

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/DownloadData;",
            ">;)V"
        }
    .end annotation

    .line 972
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    .line 974
    invoke-static {}, Lcom/mh/movie/core/b/f;->a()Lcom/mh/movie/core/b/f;

    move-result-object v1

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mh/movie/core/b/f;->a(Ljava/lang/String;)V

    .line 975
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/utils/Md5Util;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 977
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 978
    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    :cond_0
    new-instance v1, Lcom/mh/movie/core/mvp/model/db/WatchCauseEvent;

    invoke-direct {v1}, Lcom/mh/movie/core/mvp/model/db/WatchCauseEvent;-><init>()V

    const-string v2, "download"

    .line 982
    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/model/db/WatchCauseEvent;->setType(Ljava/lang/String;)V

    const-string v2, "failDownload"

    .line 983
    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/model/db/WatchCauseEvent;->setSecondaryType(Ljava/lang/String;)V

    .line 984
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/model/db/WatchCauseEvent;->setVideoType(Ljava/lang/String;)V

    .line 985
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoId()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/model/db/WatchCauseEvent;->setVideoId(I)V

    .line 986
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoInfoId()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Lcom/mh/movie/core/mvp/model/db/WatchCauseEvent;->setVideoInfoId(I)V

    const-string v0, "1"

    .line 987
    invoke-virtual {v1, v0}, Lcom/mh/movie/core/mvp/model/db/WatchCauseEvent;->setCause(Ljava/lang/String;)V

    .line 988
    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/utils/b/a;->b(Lcom/mh/movie/core/mvp/model/db/BaseAnalysisEvent;)V

    goto :goto_0

    .line 990
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->p:Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;

    if-eqz p1, :cond_2

    .line 991
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->p:Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;->d()V

    .line 992
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->p:Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;->b()V

    .line 995
    :cond_2
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->m()V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 65
    sget-boolean v0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->o:Z

    return v0
.end method

.method public c()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->j:I

    return v0
.end method

.method public c(Lcom/mh/movie/core/mvp/model/entity/DownloadData;)V
    .locals 2

    .line 519
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setDowloadState(I)V

    :cond_0
    return-void
.end method

.method public c(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1003
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1004
    instance-of v1, v0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    if-eqz v1, :cond_1

    .line 1005
    invoke-static {}, Lcom/mh/movie/core/b/f;->a()Lcom/mh/movie/core/b/f;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mh/movie/core/b/f;->a(Ljava/lang/String;)V

    .line 1006
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->f:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoInfoId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->deleteData(Ljava/lang/String;)J

    .line 1009
    :cond_1
    instance-of v1, v0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

    if-eqz v1, :cond_0

    .line 1010
    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->getTvList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;

    .line 1011
    invoke-static {}, Lcom/mh/movie/core/b/f;->a()Lcom/mh/movie/core/b/f;

    move-result-object v3

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->getVideoUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mh/movie/core/b/f;->a(Ljava/lang/String;)V

    .line 1012
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->getVideoInfoId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/DownloadTV;->getVideoId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->deleteData(Ljava/lang/String;)J

    goto :goto_1

    .line 1014
    :cond_2
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->f:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadTVData;->getVideoInfoId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1017
    :cond_3
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->p:Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;

    if-eqz p1, :cond_4

    .line 1018
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->p:Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;->c()V

    :cond_4
    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .line 1091
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/DownloadData;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1247
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1248
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1249
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public d(Lcom/mh/movie/core/mvp/model/entity/DownloadData;)V
    .locals 1

    .line 529
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 530
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->i:Z

    .line 531
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->b(Lcom/mh/movie/core/mvp/model/entity/DownloadData;)V

    .line 532
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->p:Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;

    if-eqz p1, :cond_0

    .line 533
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->p:Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;

    invoke-interface {p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;->b()V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->m:Landroid/content/Context;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/mh/movie/core/mvp/ui/utils/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    sget-boolean v1, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->o:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 146
    invoke-static {v1}, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->loadData(Z)V

    const/4 v1, 0x1

    .line 147
    sput-boolean v1, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->o:Z

    :cond_0
    return v0
.end method

.method public e()V
    .locals 1

    .line 157
    sget-boolean v0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 158
    invoke-static {v0}, Lcom/mh/movie/core/mvp/model/db/LocalVideoWatchSize;->loadData(Z)V

    .line 159
    sput-boolean v0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->o:Z

    :cond_0
    return-void
.end method

.method public e(Lcom/mh/movie/core/mvp/model/entity/DownloadData;)V
    .locals 2

    const/4 v0, 0x3

    .line 716
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setDowloadState(I)V

    .line 718
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/utils/Md5Util;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/Md5Util;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public f()I
    .locals 2

    .line 277
    sget v0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a:I

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public f(Lcom/mh/movie/core/mvp/model/entity/DownloadData;)V
    .locals 1

    .line 794
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 795
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result v0

    if-nez v0, :cond_0

    .line 796
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g(Lcom/mh/movie/core/mvp/model/entity/DownloadData;)V

    goto :goto_0

    .line 798
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->c(Lcom/mh/movie/core/mvp/model/entity/DownloadData;)V

    goto :goto_0

    .line 801
    :cond_1
    invoke-virtual {p0, p1}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->d(Lcom/mh/movie/core/mvp/model/entity/DownloadData;)V

    :goto_0
    return-void
.end method

.method public g(Lcom/mh/movie/core/mvp/model/entity/DownloadData;)V
    .locals 3

    .line 810
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 811
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    .line 812
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/utils/Md5Util;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 813
    invoke-static {}, Lcom/mh/movie/core/b/f;->a()Lcom/mh/movie/core/b/f;

    move-result-object p1

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/mh/movie/core/b/f;->b(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 815
    invoke-virtual {p1, v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setDowloadState(I)V

    .line 821
    :goto_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->q()V

    :cond_1
    return-void
.end method

.method public g()Z
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->getDownloadNumber()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h(Lcom/mh/movie/core/mvp/model/entity/DownloadData;)V
    .locals 3

    .line 848
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    .line 850
    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mh/movie/core/mvp/ui/utils/Md5Util;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 851
    invoke-static {}, Lcom/mh/movie/core/b/f;->a()Lcom/mh/movie/core/b/f;

    move-result-object p1

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/mh/movie/core/b/f;->b(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    .line 322
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->isDownloadWithoutWifi()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/NetStateUtils;->getNetWorkStates(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Z
    .locals 2

    .line 329
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/NetStateUtils;->getNetWorkStates(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Z
    .locals 5

    .line 336
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/AppInfo;->getFreeDiskStorage()D

    move-result-wide v0

    .line 337
    sget v2, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->b:I

    mul-int/lit16 v2, v2, 0x400

    mul-int/lit16 v2, v2, 0x400

    int-to-double v2, v2

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public k()Z
    .locals 1

    .line 347
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->R:Lcom/mh/movie/core/mvp/model/entity/SettingConfig;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/model/entity/SettingConfig;->isDownloadWithoutWifi()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public l()V
    .locals 1

    .line 357
    iget-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 358
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->i:Z

    .line 359
    invoke-virtual {p0, v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->a(I)V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 1

    .line 367
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->u()V

    goto :goto_0

    .line 370
    :cond_0
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->l()V

    :goto_0
    return-void
.end method

.method public n()V
    .locals 2

    .line 378
    invoke-static {}, Lcom/mh/movie/core/b/f;->a()Lcom/mh/movie/core/b/f;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/cache/g$2;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g$2;-><init>(Lcom/mh/movie/core/mvp/ui/widget/cache/g;)V

    iput-object v1, v0, Lcom/mh/movie/core/b/f;->b:Lcom/mh/movie/core/b/b;

    return-void
.end method

.method public o()V
    .locals 4

    .line 505
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    .line 506
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 507
    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setDowloadState(I)V

    goto :goto_0

    .line 510
    :cond_1
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->l()V

    .line 511
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->q()V

    return-void
.end method

.method public p()V
    .locals 5

    .line 829
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    .line 830
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mh/movie/core/mvp/ui/utils/Md5Util;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 831
    invoke-static {}, Lcom/mh/movie/core/b/f;->a()Lcom/mh/movie/core/b/f;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v4}, Lcom/mh/movie/core/b/f;->b(Ljava/lang/String;I)V

    goto :goto_0

    .line 832
    :cond_1
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 833
    invoke-virtual {v1, v4}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setDowloadState(I)V

    goto :goto_0

    .line 840
    :cond_2
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->q()V

    return-void
.end method

.method public q()V
    .locals 1

    .line 860
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->p:Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->p:Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;->a()V

    .line 862
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->p:Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;

    invoke-interface {v0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g$a;->b()V

    :cond_0
    return-void
.end method

.method public r()V
    .locals 0

    .line 879
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->s()V

    return-void
.end method

.method public s()V
    .locals 4

    .line 900
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 901
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->u()V

    goto :goto_1

    .line 902
    :cond_0
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 903
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    .line 904
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    :cond_2
    const/4 v2, 0x2

    .line 905
    invoke-virtual {v1, v2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setDowloadState(I)V

    goto :goto_0

    .line 908
    :cond_3
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->q()V

    goto :goto_1

    .line 909
    :cond_4
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->j:I

    if-nez v0, :cond_6

    .line 910
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 911
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->v()V

    goto :goto_1

    .line 913
    :cond_5
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->p()V

    goto :goto_1

    .line 915
    :cond_6
    iget v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 916
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->t()V

    :cond_7
    :goto_1
    return-void
.end method

.method public t()V
    .locals 5

    .line 924
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    .line 925
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x7

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mh/movie/core/mvp/ui/utils/Md5Util;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 926
    invoke-virtual {v1, v4}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setDowloadState(I)V

    .line 927
    invoke-static {}, Lcom/mh/movie/core/b/f;->a()Lcom/mh/movie/core/b/f;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v4}, Lcom/mh/movie/core/b/f;->b(Ljava/lang/String;I)V

    goto :goto_0

    .line 928
    :cond_1
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 929
    invoke-virtual {v1, v4}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setDowloadState(I)V

    goto :goto_0

    .line 932
    :cond_2
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->q()V

    return-void
.end method

.method public u()V
    .locals 5

    .line 939
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    .line 940
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mh/movie/core/mvp/ui/utils/Md5Util;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 941
    invoke-virtual {v1, v4}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setDowloadState(I)V

    .line 942
    invoke-static {}, Lcom/mh/movie/core/b/f;->a()Lcom/mh/movie/core/b/f;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v4}, Lcom/mh/movie/core/b/f;->b(Ljava/lang/String;I)V

    goto :goto_0

    .line 943
    :cond_1
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 944
    invoke-virtual {v1, v4}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setDowloadState(I)V

    goto :goto_0

    .line 947
    :cond_2
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->q()V

    return-void
.end method

.method public v()V
    .locals 5

    .line 954
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    .line 955
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x6

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->g:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mh/movie/core/mvp/ui/utils/Md5Util;->getMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 956
    invoke-virtual {v1, v4}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setDowloadState(I)V

    .line 957
    invoke-static {}, Lcom/mh/movie/core/b/f;->a()Lcom/mh/movie/core/b/f;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getVideoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v4}, Lcom/mh/movie/core/b/f;->b(Ljava/lang/String;I)V

    goto :goto_0

    .line 958
    :cond_1
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result v2

    if-eq v2, v4, :cond_0

    .line 959
    invoke-virtual {v1, v4}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->setDowloadState(I)V

    goto :goto_0

    .line 962
    :cond_2
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->q()V

    return-void
.end method

.method public w()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mh/movie/core/mvp/model/entity/DownloadData;",
            ">;"
        }
    .end annotation

    .line 1121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1122
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1124
    new-instance v1, Lcom/mh/movie/core/mvp/ui/widget/cache/g$4;

    invoke-direct {v1, p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g$4;-><init>(Lcom/mh/movie/core/mvp/ui/widget/cache/g;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public x()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1140
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public y()Lcom/mh/movie/core/mvp/model/entity/DownloadData;
    .locals 5

    .line 1149
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1150
    invoke-virtual {p0}, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->w()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 1151
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    .line 1152
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    .line 1153
    invoke-virtual {v2}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move-object v1, v2

    :cond_1
    return-object v1

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public z()Z
    .locals 4

    .line 1216
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/widget/cache/g;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mh/movie/core/mvp/model/entity/DownloadData;

    .line 1217
    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result v3

    if-eq v3, v2, :cond_0

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/model/entity/DownloadData;->getDowloadState()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    return v2
.end method
