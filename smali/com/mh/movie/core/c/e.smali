.class public Lcom/mh/movie/core/c/e;
.super Ljava/lang/Object;
.source "WXShare.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mh/movie/core/c/e$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

.field private c:Lcom/mh/movie/core/c/a;

.field private d:Lcom/mh/movie/core/c/e$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lcom/mh/movie/core/mvp/ui/b;->C:Lcom/mh/movie/core/mvp/ui/utils/AppInfo;

    invoke-virtual {v0}, Lcom/mh/movie/core/mvp/ui/utils/AppInfo;->getWXKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/mh/movie/core/c/e;->b:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 49
    iput-object p1, p0, Lcom/mh/movie/core/c/e;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/mh/movie/core/c/e;)Lcom/mh/movie/core/c/a;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/mh/movie/core/c/e;->c:Lcom/mh/movie/core/c/a;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public a()Lcom/mh/movie/core/c/e;
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/mh/movie/core/c/e;->b:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    sget-object v1, Lcom/mh/movie/core/mvp/ui/b;->C:Lcom/mh/movie/core/mvp/ui/utils/AppInfo;

    invoke-virtual {v1}, Lcom/mh/movie/core/mvp/ui/utils/AppInfo;->getWXKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 55
    new-instance v0, Lcom/mh/movie/core/c/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mh/movie/core/c/e$a;-><init>(Lcom/mh/movie/core/c/e;Lcom/mh/movie/core/c/e$1;)V

    iput-object v0, p0, Lcom/mh/movie/core/c/e;->d:Lcom/mh/movie/core/c/e$a;

    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "action_wx_share_response"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/mh/movie/core/c/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/mh/movie/core/c/e;->d:Lcom/mh/movie/core/c/e$a;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-object p0
.end method

.method public a(ILcom/mh/movie/core/mvp/model/entity/ShareRequest;Landroid/graphics/Bitmap;)Lcom/mh/movie/core/c/e;
    .locals 4

    .line 107
    iget-object v0, p2, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_1
    const-string v1, "emoji"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v1, "audio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_3
    const-string v1, "text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_4
    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_5
    const-string v1, "web"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_6
    const-string v1, "imageUrl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_7
    const-string v1, "imageFile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/16 v1, 0x64

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    if-eqz p3, :cond_4

    .line 188
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/WXEmojiObject;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/WXEmojiObject;-><init>()V

    .line 189
    iget-object v3, p2, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->imagePath:Ljava/lang/String;

    iput-object v3, v0, Lcom/tencent/mm/opensdk/modelmsg/WXEmojiObject;->emojiPath:Ljava/lang/String;

    .line 190
    new-instance v3, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v3}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>()V

    .line 191
    iput-object v0, v3, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 192
    iget-object v0, p2, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->title:Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 193
    iget-object p2, p2, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->description:Ljava/lang/String;

    iput-object p2, v3, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 195
    invoke-static {p3, v1, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 196
    invoke-static {p2, v2}, Lcom/mh/movie/core/c/d;->a(Landroid/graphics/Bitmap;Z)[B

    move-result-object p2

    iput-object p2, v3, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 198
    new-instance p2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {p2}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    const-string p3, "emoji"

    .line 199
    invoke-direct {p0, p3}, Lcom/mh/movie/core/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 200
    iput-object v3, p2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 201
    iput p1, p2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 202
    iget-object p1, p0, Lcom/mh/movie/core/c/e;->b:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {p1, p2}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    goto/16 :goto_2

    :pswitch_1
    if-eqz p3, :cond_4

    .line 171
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;

    invoke-direct {v0, p3}, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;-><init>(Landroid/graphics/Bitmap;)V

    .line 172
    new-instance v3, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v3}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>()V

    .line 173
    iput-object v0, v3, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 174
    iget-object p2, p2, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->description:Ljava/lang/String;

    iput-object p2, v3, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 176
    invoke-static {p3, v1, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 177
    invoke-static {p2, v2}, Lcom/mh/movie/core/c/d;->a(Landroid/graphics/Bitmap;Z)[B

    move-result-object p2

    iput-object p2, v3, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 179
    new-instance p2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {p2}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 180
    iput-object v3, p2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 181
    iput p1, p2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    const-string p1, "img"

    .line 182
    invoke-direct {p0, p1}, Lcom/mh/movie/core/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 183
    iget-object p1, p0, Lcom/mh/movie/core/c/e;->b:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {p1, p2}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    goto/16 :goto_2

    :pswitch_2
    if-eqz p3, :cond_4

    .line 154
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;

    invoke-direct {v0, p3}, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;-><init>(Landroid/graphics/Bitmap;)V

    .line 155
    new-instance v3, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v3}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>()V

    .line 156
    iput-object v0, v3, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 157
    iget-object p2, p2, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->description:Ljava/lang/String;

    iput-object p2, v3, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 159
    invoke-static {p3, v1, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 160
    invoke-static {p2, v2}, Lcom/mh/movie/core/c/d;->a(Landroid/graphics/Bitmap;Z)[B

    move-result-object p2

    iput-object p2, v3, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 162
    new-instance p2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {p2}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 163
    iput-object v3, p2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 164
    iput p1, p2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    const-string p1, "img"

    .line 165
    invoke-direct {p0, p1}, Lcom/mh/movie/core/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 166
    iget-object p1, p0, Lcom/mh/movie/core/c/e;->b:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {p1, p2}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    goto/16 :goto_2

    .line 133
    :pswitch_3
    iget-object p3, p2, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->description:Ljava/lang/String;

    if-eqz p3, :cond_4

    .line 134
    new-instance p3, Lcom/tencent/mm/opensdk/modelmsg/WXTextObject;

    iget-object v0, p2, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->description:Ljava/lang/String;

    invoke-direct {p3, v0}, Lcom/tencent/mm/opensdk/modelmsg/WXTextObject;-><init>(Ljava/lang/String;)V

    .line 136
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v0, p3}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>(Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;)V

    .line 137
    iput-object p3, v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 138
    iget-object p2, p2, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->description:Ljava/lang/String;

    iput-object p2, v0, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 140
    new-instance p2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {p2}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 141
    iput-object v0, p2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 142
    iput p1, p2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    const-string p1, "text"

    .line 143
    invoke-direct {p0, p1}, Lcom/mh/movie/core/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 144
    iget-object p1, p0, Lcom/mh/movie/core/c/e;->b:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {p1, p2}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "text shared: "

    const-string p2, "true"

    .line 146
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    const-string p1, "text shared: "

    const-string p2, "false"

    .line 148
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 109
    :pswitch_4
    iget-object v0, p2, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->webPageUrl:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 110
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;

    iget-object v3, p2, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->webPageUrl:Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;-><init>(Ljava/lang/String;)V

    .line 112
    new-instance v3, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v3, v0}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>(Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;)V

    .line 113
    iget-object v0, p2, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->title:Ljava/lang/String;

    iput-object v0, v3, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 114
    iget-object p2, p2, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->description:Ljava/lang/String;

    iput-object p2, v3, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 116
    invoke-static {p3, v1, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 117
    invoke-virtual {v3, p2}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->setThumbImage(Landroid/graphics/Bitmap;)V

    .line 121
    :cond_2
    new-instance p2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {p2}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 122
    iput-object v3, p2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 123
    iput p1, p2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 124
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 125
    iget-object p1, p0, Lcom/mh/movie/core/c/e;->b:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {p1, p2}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "text shared: "

    const-string p2, "true"

    .line 127
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const-string p1, "text shared: "

    const-string p2, "false"

    .line 129
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-object p0

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
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(ILcom/mh/movie/core/mvp/model/entity/ShareRequest;Landroid/content/Context;)V
    .locals 2

    .line 80
    iget-object v0, p2, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->imageUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/raizlabs/android/dbflow/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {p3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p2, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/mh/movie/core/c/e$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mh/movie/core/c/e$1;-><init>(Lcom/mh/movie/core/c/e;ILcom/mh/movie/core/mvp/model/entity/ShareRequest;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0

    .line 95
    :cond_0
    iget-object p3, p2, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->imagePath:Ljava/lang/String;

    invoke-static {p3}, Lcom/raizlabs/android/dbflow/a;->a(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 96
    iget-object p3, p2, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->imagePath:Ljava/lang/String;

    invoke-static {p3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 97
    invoke-virtual {p0, p1, p2, p3}, Lcom/mh/movie/core/c/e;->a(ILcom/mh/movie/core/mvp/model/entity/ShareRequest;Landroid/graphics/Bitmap;)Lcom/mh/movie/core/c/e;

    .line 98
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 100
    invoke-virtual {p2}, Lcom/mh/movie/core/mvp/model/entity/ShareRequest;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/mh/movie/core/c/e;->a(ILcom/mh/movie/core/mvp/model/entity/ShareRequest;Landroid/graphics/Bitmap;)Lcom/mh/movie/core/c/e;

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    .line 102
    invoke-virtual {p0, p1, p2, p3}, Lcom/mh/movie/core/c/e;->a(ILcom/mh/movie/core/mvp/model/entity/ShareRequest;Landroid/graphics/Bitmap;)Lcom/mh/movie/core/c/e;

    :goto_0
    return-void
.end method

.method public a(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 72
    invoke-virtual {p0, v0, p1, p2}, Lcom/mh/movie/core/c/e;->a(ILcom/mh/movie/core/mvp/model/entity/ShareRequest;Landroid/content/Context;)V

    return-void
.end method

.method public b()Lcom/tencent/mm/opensdk/openapi/IWXAPI;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/mh/movie/core/c/e;->b:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    return-object v0
.end method

.method public b(Lcom/mh/movie/core/mvp/model/entity/ShareRequest;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, v0, p1, p2}, Lcom/mh/movie/core/c/e;->a(ILcom/mh/movie/core/mvp/model/entity/ShareRequest;Landroid/content/Context;)V

    return-void
.end method

.method public c()Z
    .locals 6

    .line 216
    iget-object v0, p0, Lcom/mh/movie/core/c/e;->b:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mh/movie/core/c/e;->b:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/mh/movie/core/c/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    .line 220
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    .line 222
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 223
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.tencent.mm"

    .line 224
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public d()Z
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/mh/movie/core/c/e;->b:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/mh/movie/core/c/e;->b:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->getWXAppSupportAPI()I

    move-result v0

    const v2, 0x21020001

    if-le v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public setListener(Lcom/mh/movie/core/c/a;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/mh/movie/core/c/e;->c:Lcom/mh/movie/core/c/a;

    return-void
.end method
