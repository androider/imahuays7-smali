.class public Lcom/mh/movie/core/c/c;
.super Ljava/lang/Object;
.source "TencentShare.java"


# instance fields
.field private a:Lcom/tencent/tauth/Tencent;

.field private b:Landroid/app/Activity;

.field private c:Lcom/tencent/tauth/IUiListener;


# direct methods
.method public constructor <init>(Lcom/tencent/tauth/Tencent;Landroid/app/Activity;Lcom/tencent/tauth/IUiListener;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/mh/movie/core/c/c;->a:Lcom/tencent/tauth/Tencent;

    .line 29
    iput-object p2, p0, Lcom/mh/movie/core/c/c;->b:Landroid/app/Activity;

    .line 30
    iput-object p3, p0, Lcom/mh/movie/core/c/c;->c:Lcom/tencent/tauth/IUiListener;

    return-void
.end method


# virtual methods
.method public a(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;)V
    .locals 1

    const-string v0, "share_qq"

    .line 34
    invoke-virtual {p0, p1, v0}, Lcom/mh/movie/core/c/c;->a(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;Ljava/lang/String;)V
    .locals 4

    const-string v0, ""

    .line 44
    iget-object v1, p1, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->imageUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/a;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 45
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 46
    :cond_1
    iget-object v1, p1, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->imagePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/raizlabs/android/dbflow/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 47
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->getImagePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/mh/movie/core/mvp/ui/utils/BitmapUtil;->getBitmapCachePath(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "share_qq"

    .line 54
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 55
    invoke-virtual {p0, p1, v0, v2}, Lcom/mh/movie/core/c/c;->a(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;Ljava/lang/String;Z)V

    goto :goto_1

    .line 57
    :cond_3
    invoke-virtual {p0, p1, v0, v2}, Lcom/mh/movie/core/c/c;->b(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;Ljava/lang/String;Z)V
    .locals 5

    .line 64
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    iget-object v1, p1, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x5

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_1
    const-string v2, "emoji"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_2
    const-string v2, "audio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_3
    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_4
    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_5
    const-string v2, "web"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_6
    const-string v2, "imageUrl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_7
    const-string v2, "imageFile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    const-string p1, "req_type"

    .line 89
    invoke-virtual {v0, p1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, ""

    .line 91
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz p3, :cond_1

    const-string p1, "imageLocalUrl"

    .line 93
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string p1, "imageUrl"

    .line 95
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    const-string p1, "appName"

    .line 98
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object p1, p0, Lcom/mh/movie/core/c/c;->a:Lcom/tencent/tauth/Tencent;

    iget-object p2, p0, Lcom/mh/movie/core/c/c;->b:Landroid/app/Activity;

    iget-object p3, p0, Lcom/mh/movie/core/c/c;->c:Lcom/tencent/tauth/IUiListener;

    invoke-virtual {p1, p2, v0, p3}, Lcom/tencent/tauth/Tencent;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    goto :goto_4

    :pswitch_1
    const-string v1, "req_type"

    .line 68
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, ""

    .line 69
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p3, :cond_3

    const-string p3, "imageLocalUrl"

    .line 71
    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string p3, "imageUrl"

    .line 73
    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    const-string p2, "appName"

    .line 77
    invoke-static {}, Lcom/mh/movie/core/mvp/ui/utils/RHelp;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "title"

    .line 78
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "summary"

    .line 79
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->getDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "targetUrl"

    .line 81
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->getWebPageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object p1, p0, Lcom/mh/movie/core/c/c;->a:Lcom/tencent/tauth/Tencent;

    iget-object p2, p0, Lcom/mh/movie/core/c/c;->b:Landroid/app/Activity;

    iget-object p3, p0, Lcom/mh/movie/core/c/c;->c:Lcom/tencent/tauth/IUiListener;

    invoke-virtual {p1, p2, v0, p3}, Lcom/tencent/tauth/Tencent;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x345e1289 -> :sswitch_7
        -0x333c9dec -> :sswitch_6
        0x1cb54 -> :sswitch_5
        0x2ff57c -> :sswitch_4
        0x36452d -> :sswitch_3
        0x58d9bd6 -> :sswitch_2
        0x5c28046 -> :sswitch_1
        0x6b0147b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public b(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;)V
    .locals 1

    const-string v0, "share_qzone"

    .line 38
    invoke-virtual {p0, p1, v0}, Lcom/mh/movie/core/c/c;->a(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;Ljava/lang/String;Z)V
    .locals 5

    .line 108
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 109
    iget-object v1, p1, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->type:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_1
    const-string v2, "emoji"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_2
    const-string v2, "audio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_3
    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_4
    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_5
    const-string v2, "web"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_6
    const-string v2, "imageUrl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_7
    const-string v2, "imageFile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const-string v1, "req_type"

    .line 128
    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "summary"

    .line 129
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    .line 130
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    .line 131
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 132
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p2, "imageUrl"

    .line 133
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 136
    :cond_1
    iget-object p1, p0, Lcom/mh/movie/core/c/c;->a:Lcom/tencent/tauth/Tencent;

    iget-object p2, p0, Lcom/mh/movie/core/c/c;->b:Landroid/app/Activity;

    iget-object p3, p0, Lcom/mh/movie/core/c/c;->c:Lcom/tencent/tauth/IUiListener;

    invoke-virtual {p1, p2, v0, p3}, Lcom/tencent/tauth/Tencent;->publishToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    goto :goto_2

    :pswitch_1
    const-string v1, "req_type"

    .line 112
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "title"

    .line 113
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "summary"

    .line 114
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "targetUrl"

    .line 115
    invoke-virtual {p1}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->getWebPageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ""

    .line 118
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p3, :cond_2

    .line 119
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string p2, "imageUrl"

    .line 122
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 123
    iget-object p1, p0, Lcom/mh/movie/core/c/c;->a:Lcom/tencent/tauth/Tencent;

    iget-object p2, p0, Lcom/mh/movie/core/c/c;->b:Landroid/app/Activity;

    iget-object p3, p0, Lcom/mh/movie/core/c/c;->c:Lcom/tencent/tauth/IUiListener;

    invoke-virtual {p1, p2, v0, p3}, Lcom/tencent/tauth/Tencent;->shareToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x345e1289 -> :sswitch_7
        -0x333c9dec -> :sswitch_6
        0x1cb54 -> :sswitch_5
        0x2ff57c -> :sswitch_4
        0x36452d -> :sswitch_3
        0x58d9bd6 -> :sswitch_2
        0x5c28046 -> :sswitch_1
        0x6b0147b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
