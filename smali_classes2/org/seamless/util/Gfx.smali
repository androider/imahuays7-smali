.class public Lorg/seamless/util/Gfx;
.super Ljava/lang/Object;
.source "Gfx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScaledInstance(Ljava/awt/image/BufferedImage;IILjava/lang/Object;Z)Ljava/awt/image/BufferedImage;
    .locals 11

    .line 100
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getTransparency()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    if-eqz p4, :cond_2

    .line 108
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    .line 109
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    :cond_1
    move-object v4, p0

    goto :goto_1

    :cond_2
    move-object v4, p0

    move v0, p1

    move v2, p2

    :goto_1
    if-eqz p4, :cond_3

    if-le v0, p1, :cond_3

    .line 119
    div-int/lit8 v0, v0, 0x2

    if-ge v0, p1, :cond_3

    move v0, p1

    :cond_3
    if-eqz p4, :cond_4

    if-le v2, p2, :cond_4

    .line 126
    div-int/lit8 v2, v2, 0x2

    if-ge v2, p2, :cond_4

    move v2, p2

    .line 132
    :cond_4
    new-instance p0, Ljava/awt/image/BufferedImage;

    invoke-direct {p0, v0, v2, v1}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 133
    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v10

    .line 134
    sget-object v3, Ljava/awt/RenderingHints;->KEY_INTERPOLATION:Ljava/awt/RenderingHints$Key;

    invoke-virtual {v10, v3, p3}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v3, v10

    move v7, v0

    move v8, v2

    .line 135
    invoke-virtual/range {v3 .. v9}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IIIILjava/awt/image/ImageObserver;)Z

    .line 136
    invoke-virtual {v10}, Ljava/awt/Graphics2D;->dispose()V

    if-ne v0, p1, :cond_1

    if-ne v2, p2, :cond_1

    return-object p0
.end method

.method public static resizeProportionally(Ljavax/swing/ImageIcon;Ljava/lang/String;II)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Ljavax/swing/ImageIcon;->getIconWidth()I

    move-result v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-eq p2, v0, :cond_0

    int-to-double v3, p2

    invoke-virtual {p0}, Ljavax/swing/ImageIcon;->getIconWidth()I

    move-result v0

    int-to-double v5, v0

    div-double/2addr v3, v5

    goto :goto_0

    :cond_0
    move-wide v3, v1

    .line 40
    :goto_0
    invoke-virtual {p0}, Ljavax/swing/ImageIcon;->getIconHeight()I

    move-result v0

    if-eq p3, v0, :cond_1

    int-to-double v0, p3

    invoke-virtual {p0}, Ljavax/swing/ImageIcon;->getIconHeight()I

    move-result v2

    int-to-double v5, v2

    div-double v1, v0, v5

    :cond_1
    cmpg-double v0, v3, v1

    if-gez v0, :cond_2

    .line 45
    invoke-virtual {p0}, Ljavax/swing/ImageIcon;->getIconHeight()I

    move-result p3

    int-to-double v0, p3

    mul-double v0, v0, v3

    double-to-int p3, v0

    goto :goto_1

    .line 47
    :cond_2
    invoke-virtual {p0}, Ljavax/swing/ImageIcon;->getIconWidth()I

    move-result p2

    int-to-double v3, p2

    mul-double v3, v3, v1

    double-to-int p2, v3

    :goto_1
    const-string v0, "image/png"

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    .line 54
    :goto_2
    new-instance v1, Ljava/awt/image/BufferedImage;

    invoke-virtual {p0}, Ljavax/swing/ImageIcon;->getIconWidth()I

    move-result v2

    invoke-virtual {p0}, Ljavax/swing/ImageIcon;->getIconHeight()I

    move-result v3

    invoke-direct {v1, v2, v3, v0}, Ljava/awt/image/BufferedImage;-><init>(III)V

    .line 55
    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Ljavax/swing/ImageIcon;->getImage()Ljava/awt/Image;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Ljavax/swing/ImageIcon;->getIconWidth()I

    move-result v8

    invoke-virtual {p0}, Ljavax/swing/ImageIcon;->getIconHeight()I

    move-result v9

    const/4 v10, 0x0

    move-object v4, v0

    invoke-virtual/range {v4 .. v10}, Ljava/awt/Graphics2D;->drawImage(Ljava/awt/Image;IIIILjava/awt/image/ImageObserver;)Z

    .line 57
    invoke-virtual {v0}, Ljava/awt/Graphics2D;->dispose()V

    .line 59
    sget-object p0, Ljava/awt/RenderingHints;->VALUE_INTERPOLATION_NEAREST_NEIGHBOR:Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v1, p2, p3, p0, v0}, Lorg/seamless/util/Gfx;->getScaledInstance(Ljava/awt/image/BufferedImage;IILjava/lang/Object;Z)Ljava/awt/image/BufferedImage;

    move-result-object p0

    const-string p2, ""

    const-string p3, "image/png"

    .line 63
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p2, "png"

    goto :goto_3

    :cond_4
    const-string p3, "image/jpeg"

    .line 65
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_5

    const-string p3, "image/jpg"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    const-string p2, "jpeg"

    .line 68
    :cond_6
    :goto_3
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    const/16 p3, 0x400

    invoke-direct {p1, p3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 69
    invoke-static {p0, p2, p1}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/OutputStream;)Z

    .line 70
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method
