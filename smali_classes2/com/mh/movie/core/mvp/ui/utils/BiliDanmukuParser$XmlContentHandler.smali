.class public Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "BiliDanmukuParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "XmlContentHandler"
.end annotation


# static fields
.field private static final TRUE_STRING:Ljava/lang/String; = "true"


# instance fields
.field public completed:Z

.field public index:I

.field public item:Lmaster/flame/danmaku/danmaku/model/d;

.field public result:Lmaster/flame/danmaku/danmaku/model/android/e;

.field final synthetic this$0:Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;


# direct methods
.method public constructor <init>(Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->this$0:Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 79
    new-instance p1, Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-direct {p1}, Lmaster/flame/danmaku/danmaku/model/android/e;-><init>()V

    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->result:Lmaster/flame/danmaku/danmaku/model/android/e;

    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->item:Lmaster/flame/danmaku/danmaku/model/d;

    const/4 p1, 0x0

    .line 83
    iput-boolean p1, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->completed:Z

    .line 85
    iput p1, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->index:I

    return-void
.end method

.method private decodeXmlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "&amp;"

    .line 263
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "&amp;"

    const-string v1, "&"

    .line 264
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "&quot;"

    .line 266
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "&quot;"

    const-string v1, "\""

    .line 267
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v0, "&gt;"

    .line 269
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "&gt;"

    const-string v1, ">"

    .line 270
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    const-string v0, "&lt;"

    .line 272
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "&lt;"

    const-string v1, "<"

    .line 273
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method


# virtual methods
.method public characters([CII)V
    .locals 30

    move-object/from16 v1, p0

    .line 156
    iget-object v2, v1, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->item:Lmaster/flame/danmaku/danmaku/model/d;

    if-eqz v2, :cond_e

    .line 157
    iget-object v2, v1, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->item:Lmaster/flame/danmaku/danmaku/model/d;

    new-instance v3, Ljava/lang/String;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-direct {v3, v4, v5, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {v1, v3}, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->decodeXmlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmaster/flame/danmaku/danmaku/c/a;->a(Lmaster/flame/danmaku/danmaku/model/d;Ljava/lang/CharSequence;)V

    .line 158
    iget-object v2, v1, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->item:Lmaster/flame/danmaku/danmaku/model/d;

    iget v3, v1, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v1, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->index:I

    iput v3, v2, Lmaster/flame/danmaku/danmaku/model/d;->r:I

    .line 161
    iget-object v2, v1, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->item:Lmaster/flame/danmaku/danmaku/model/d;

    iget-object v2, v2, Lmaster/flame/danmaku/danmaku/model/d;->b:Ljava/lang/CharSequence;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 162
    iget-object v3, v1, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->item:Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {v3}, Lmaster/flame/danmaku/danmaku/model/d;->o()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_e

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "]"

    .line 163
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 167
    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v7, 0x0

    .line 169
    :goto_0
    :try_start_1
    array-length v8, v2

    if-ge v7, v8, :cond_0

    .line 170
    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v2, v7
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v6, v2

    move-object v2, v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v6, v3

    .line 173
    :goto_1
    invoke-static {v2}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    move-object v2, v6

    :cond_0
    if-eqz v2, :cond_d

    .line 176
    array-length v6, v2

    const/4 v7, 0x5

    if-lt v6, v7, :cond_d

    const/4 v6, 0x4

    aget-object v8, v2, v6

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto/16 :goto_8

    .line 180
    :cond_1
    iget-object v3, v1, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->item:Lmaster/flame/danmaku/danmaku/model/d;

    aget-object v6, v2, v6

    iput-object v6, v3, Lmaster/flame/danmaku/danmaku/model/d;->b:Ljava/lang/CharSequence;

    .line 181
    aget-object v3, v2, v5

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/4 v6, 0x1

    .line 182
    aget-object v8, v2, v6

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    const/4 v9, 0x2

    .line 185
    aget-object v10, v2, v9

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 186
    sget v11, Lmaster/flame/danmaku/danmaku/model/c;->a:I

    int-to-float v11, v11

    aget-object v12, v10, v5

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    mul-float v11, v11, v12

    float-to-int v14, v11

    .line 188
    array-length v11, v10

    if-le v11, v6, :cond_2

    .line 189
    sget v11, Lmaster/flame/danmaku/danmaku/model/c;->a:I

    int-to-float v11, v11

    aget-object v10, v10, v6

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    mul-float v11, v11, v10

    float-to-int v10, v11

    move v15, v10

    goto :goto_2

    :cond_2
    move v15, v14

    :goto_2
    const/4 v10, 0x3

    .line 191
    aget-object v10, v2, v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    const/high16 v11, 0x447a0000    # 1000.0f

    mul-float v10, v10, v11

    float-to-long v10, v10

    .line 195
    array-length v12, v2

    const/4 v13, 0x0

    if-lt v12, v4, :cond_3

    .line 196
    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    const/4 v7, 0x6

    .line 197
    aget-object v7, v2, v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    .line 199
    :goto_3
    array-length v12, v2

    const/16 v9, 0xb

    if-lt v12, v9, :cond_6

    .line 200
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/16 v12, 0x8

    .line 201
    aget-object v12, v2, v12

    invoke-static {v12}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v12

    const-string v6, ""

    const/16 v16, 0x9

    .line 202
    aget-object v5, v2, v16

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 203
    aget-object v5, v2, v16

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    goto :goto_4

    :cond_4
    move-wide v5, v10

    :goto_4
    const-string v9, ""

    const/16 v16, 0xa

    move/from16 v18, v4

    .line 205
    aget-object v4, v2, v16

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 206
    aget-object v4, v2, v16

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    move-wide/from16 v19, v5

    float-to-long v4, v4

    move-wide/from16 v26, v4

    move/from16 v4, v18

    move-wide/from16 v24, v19

    goto :goto_6

    :cond_5
    move-wide/from16 v19, v5

    move/from16 v4, v18

    move-wide/from16 v24, v19

    goto :goto_5

    :cond_6
    move v4, v3

    move v12, v8

    move-wide/from16 v24, v10

    :goto_5
    const-wide/16 v26, 0x0

    .line 209
    :goto_6
    iget-object v5, v1, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->this$0:Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;

    invoke-static {v5, v3}, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;->access$500(Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;F)Z

    move-result v5

    const v6, 0x442a8000    # 682.0f

    if-eqz v5, :cond_7

    mul-float v3, v3, v6

    :cond_7
    move/from16 v20, v3

    .line 212
    iget-object v3, v1, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->this$0:Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;

    invoke-static {v3, v8}, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;->access$500(Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;F)Z

    move-result v3

    const/high16 v5, 0x43db0000    # 438.0f

    if-eqz v3, :cond_8

    mul-float v8, v8, v5

    :cond_8
    move/from16 v21, v8

    .line 215
    iget-object v3, v1, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->this$0:Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;

    invoke-static {v3, v4}, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;->access$500(Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;F)Z

    move-result v3

    if-eqz v3, :cond_9

    mul-float v4, v4, v6

    :cond_9
    move/from16 v22, v4

    .line 218
    iget-object v3, v1, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->this$0:Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;

    invoke-static {v3, v12}, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;->access$500(Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;F)Z

    move-result v3

    if-eqz v3, :cond_a

    mul-float v12, v12, v5

    :cond_a
    move/from16 v23, v12

    .line 221
    iget-object v3, v1, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->item:Lmaster/flame/danmaku/danmaku/model/d;

    new-instance v4, Lmaster/flame/danmaku/danmaku/model/g;

    invoke-direct {v4, v10, v11}, Lmaster/flame/danmaku/danmaku/model/g;-><init>(J)V

    iput-object v4, v3, Lmaster/flame/danmaku/danmaku/model/d;->q:Lmaster/flame/danmaku/danmaku/model/g;

    .line 222
    iget-object v3, v1, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->item:Lmaster/flame/danmaku/danmaku/model/d;

    iput v13, v3, Lmaster/flame/danmaku/danmaku/model/d;->g:F

    .line 223
    iget-object v3, v1, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->item:Lmaster/flame/danmaku/danmaku/model/d;

    iput v7, v3, Lmaster/flame/danmaku/danmaku/model/d;->h:F

    .line 224
    iget-object v3, v1, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->this$0:Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;

    invoke-static {v3}, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;->access$600(Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v3

    iget-object v3, v3, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-object v4, v1, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->item:Lmaster/flame/danmaku/danmaku/model/d;

    iget-object v5, v1, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->this$0:Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;

    iget v5, v5, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;->mDispScaleX:F

    iget-object v6, v1, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->this$0:Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;

    iget v6, v6, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;->mDispScaleY:F

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move/from16 v28, v5

    move/from16 v29, v6

    invoke-virtual/range {v18 .. v29}, Lmaster/flame/danmaku/danmaku/model/android/d;->a(Lmaster/flame/danmaku/danmaku/model/d;FFFFJJFF)V

    .line 226
    iget-object v3, v1, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->this$0:Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;

    invoke-static {v3}, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;->access$700(Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v3

    iget-object v12, v3, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-object v13, v1, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->item:Lmaster/flame/danmaku/danmaku/model/d;

    move-wide/from16 v16, v10

    invoke-virtual/range {v12 .. v17}, Lmaster/flame/danmaku/danmaku/model/android/d;->a(Lmaster/flame/danmaku/danmaku/model/d;IIJ)V

    .line 228
    array-length v3, v2

    const/16 v4, 0xc

    if-lt v3, v4, :cond_b

    const/16 v3, 0xb

    .line 230
    aget-object v4, v2, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "true"

    aget-object v3, v2, v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 231
    iget-object v3, v1, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->item:Lmaster/flame/danmaku/danmaku/model/d;

    const/4 v4, 0x0

    iput v4, v3, Lmaster/flame/danmaku/danmaku/model/d;->i:I

    .line 234
    :cond_b
    array-length v3, v2

    .line 237
    array-length v3, v2

    .line 240
    array-length v3, v2

    const/16 v4, 0xf

    if-lt v3, v4, :cond_e

    const-string v3, ""

    const/16 v4, 0xe

    .line 242
    aget-object v5, v2, v4

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 243
    aget-object v2, v2, v4

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "L"

    .line 244
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 245
    array-length v3, v2

    if-lez v3, :cond_e

    .line 246
    array-length v3, v2

    const/4 v4, 0x2

    filled-new-array {v3, v4}, [I

    move-result-object v3

    const-class v4, F

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[F

    const/4 v4, 0x0

    .line 247
    :goto_7
    array-length v5, v2

    if-ge v4, v5, :cond_c

    .line 248
    aget-object v5, v2, v4

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 249
    aget-object v6, v3, v4

    const/4 v7, 0x0

    aget-object v8, v5, v7

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aput v8, v6, v7

    .line 250
    aget-object v6, v3, v4

    const/4 v8, 0x1

    aget-object v5, v5, v8

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    aput v5, v6, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 252
    :cond_c
    iget-object v2, v1, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->this$0:Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;->access$800(Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v2

    iget-object v2, v2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-object v2, v1, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->item:Lmaster/flame/danmaku/danmaku/model/d;

    iget-object v4, v1, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->this$0:Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;

    iget v4, v4, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;->mDispScaleX:F

    iget-object v5, v1, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->this$0:Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;

    iget v5, v5, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;->mDispScaleY:F

    invoke-static {v2, v3, v4, v5}, Lmaster/flame/danmaku/danmaku/model/android/d;->a(Lmaster/flame/danmaku/danmaku/model/d;[[FFF)V

    goto :goto_9

    .line 177
    :cond_d
    :goto_8
    iput-object v3, v1, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->item:Lmaster/flame/danmaku/danmaku/model/d;

    return-void

    :cond_e
    :goto_9
    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->completed:Z

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 138
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->item:Lmaster/flame/danmaku/danmaku/model/d;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->item:Lmaster/flame/danmaku/danmaku/model/d;

    iget-object p1, p1, Lmaster/flame/danmaku/danmaku/model/d;->b:Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    .line 139
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->item:Lmaster/flame/danmaku/danmaku/model/d;

    iget-object p1, p1, Lmaster/flame/danmaku/danmaku/model/d;->q:Lmaster/flame/danmaku/danmaku/model/g;

    if-eqz p1, :cond_1

    .line 140
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    const-string p1, "d"

    .line 141
    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 142
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->item:Lmaster/flame/danmaku/danmaku/model/d;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->this$0:Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;

    invoke-static {p2}, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;->access$300(Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;)Lmaster/flame/danmaku/danmaku/model/f;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmaster/flame/danmaku/danmaku/model/d;->a(Lmaster/flame/danmaku/danmaku/model/f;)V

    .line 143
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->item:Lmaster/flame/danmaku/danmaku/model/d;

    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->this$0:Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;

    invoke-static {p2}, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;->access$400(Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object p2

    iget-object p2, p2, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->r:Lmaster/flame/danmaku/danmaku/model/j;

    iput-object p2, p1, Lmaster/flame/danmaku/danmaku/model/d;->G:Lmaster/flame/danmaku/danmaku/model/j;

    .line 144
    iget-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->result:Lmaster/flame/danmaku/danmaku/model/android/e;

    invoke-virtual {p1}, Lmaster/flame/danmaku/danmaku/model/android/e;->f()Ljava/lang/Object;

    move-result-object p1

    .line 145
    monitor-enter p1

    .line 146
    :try_start_0
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->result:Lmaster/flame/danmaku/danmaku/model/android/e;

    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->item:Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {p2, p3}, Lmaster/flame/danmaku/danmaku/model/android/e;->a(Lmaster/flame/danmaku/danmaku/model/d;)Z

    .line 147
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_1
    :goto_1
    const/4 p1, 0x0

    .line 150
    iput-object p1, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->item:Lmaster/flame/danmaku/danmaku/model/d;

    :cond_2
    return-void
.end method

.method public getResult()Lmaster/flame/danmaku/danmaku/model/android/e;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->result:Lmaster/flame/danmaku/danmaku/model/android/e;

    return-object v0
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 104
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p3

    .line 105
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, "d"

    .line 106
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "p"

    .line 116
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ","

    .line 118
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 119
    array-length p2, p1

    if-lez p2, :cond_2

    const/4 p2, 0x0

    .line 120
    aget-object p2, p1, p2

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    const/high16 p3, 0x447a0000    # 1000.0f

    mul-float p2, p2, p3

    float-to-long p2, p2

    const/4 p4, 0x1

    .line 121
    aget-object p4, p1, p4

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    const/4 v0, 0x2

    .line 122
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const-wide/32 v1, -0x1000000

    const/4 v3, 0x3

    .line 123
    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    or-long v5, v3, v1

    const-wide/16 v1, -0x1

    and-long v3, v5, v1

    long-to-int p1, v3

    .line 125
    iget-object v1, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->this$0:Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;

    invoke-static {v1}, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;->access$100(Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v1

    iget-object v1, v1, Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;->t:Lmaster/flame/danmaku/danmaku/model/android/d;

    iget-object v2, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->this$0:Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;

    invoke-static {v2}, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;->access$000(Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;)Lmaster/flame/danmaku/danmaku/model/android/DanmakuContext;

    move-result-object v2

    invoke-virtual {v1, p4, v2}, Lmaster/flame/danmaku/danmaku/model/android/d;->a(ILmaster/flame/danmaku/danmaku/model/android/DanmakuContext;)Lmaster/flame/danmaku/danmaku/model/d;

    move-result-object p4

    iput-object p4, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->item:Lmaster/flame/danmaku/danmaku/model/d;

    .line 126
    iget-object p4, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->item:Lmaster/flame/danmaku/danmaku/model/d;

    if-eqz p4, :cond_2

    .line 127
    iget-object p4, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->item:Lmaster/flame/danmaku/danmaku/model/d;

    invoke-virtual {p4, p2, p3}, Lmaster/flame/danmaku/danmaku/model/d;->d(J)V

    .line 128
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->item:Lmaster/flame/danmaku/danmaku/model/d;

    iget-object p3, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->this$0:Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;

    invoke-static {p3}, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;->access$200(Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser;)F

    move-result p3

    const p4, 0x3f19999a    # 0.6f

    sub-float/2addr p3, p4

    mul-float v0, v0, p3

    iput v0, p2, Lmaster/flame/danmaku/danmaku/model/d;->k:F

    .line 129
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->item:Lmaster/flame/danmaku/danmaku/model/d;

    iput p1, p2, Lmaster/flame/danmaku/danmaku/model/d;->f:I

    .line 130
    iget-object p2, p0, Lcom/mh/movie/core/mvp/ui/utils/BiliDanmukuParser$XmlContentHandler;->item:Lmaster/flame/danmaku/danmaku/model/d;

    const/high16 p3, -0x1000000

    if-gt p1, p3, :cond_1

    const/4 p3, -0x1

    :cond_1
    iput p3, p2, Lmaster/flame/danmaku/danmaku/model/d;->i:I

    :cond_2
    return-void
.end method
