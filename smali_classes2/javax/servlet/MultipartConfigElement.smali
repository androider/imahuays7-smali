.class public Ljavax/servlet/MultipartConfigElement;
.super Ljava/lang/Object;
.source "MultipartConfigElement.java"


# instance fields
.field private fileSizeThreshold:I

.field private location:Ljava/lang/String;

.field private maxFileSize:J

.field private maxRequestSize:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, ""

    .line 64
    iput-object p1, p0, Ljavax/servlet/MultipartConfigElement;->location:Ljava/lang/String;

    goto :goto_0

    .line 66
    :cond_0
    iput-object p1, p0, Ljavax/servlet/MultipartConfigElement;->location:Ljava/lang/String;

    :goto_0
    const-wide/16 v0, -0x1

    .line 68
    iput-wide v0, p0, Ljavax/servlet/MultipartConfigElement;->maxFileSize:J

    .line 69
    iput-wide v0, p0, Ljavax/servlet/MultipartConfigElement;->maxRequestSize:J

    const/4 p1, 0x0

    .line 70
    iput p1, p0, Ljavax/servlet/MultipartConfigElement;->fileSizeThreshold:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJI)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string p1, ""

    .line 86
    iput-object p1, p0, Ljavax/servlet/MultipartConfigElement;->location:Ljava/lang/String;

    goto :goto_0

    .line 88
    :cond_0
    iput-object p1, p0, Ljavax/servlet/MultipartConfigElement;->location:Ljava/lang/String;

    .line 90
    :goto_0
    iput-wide p2, p0, Ljavax/servlet/MultipartConfigElement;->maxFileSize:J

    .line 91
    iput-wide p4, p0, Ljavax/servlet/MultipartConfigElement;->maxRequestSize:J

    .line 92
    iput p6, p0, Ljavax/servlet/MultipartConfigElement;->fileSizeThreshold:I

    return-void
.end method

.method public constructor <init>(Ljavax/servlet/annotation/MultipartConfig;)V
    .locals 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-interface {p1}, Ljavax/servlet/annotation/MultipartConfig;->location()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/servlet/MultipartConfigElement;->location:Ljava/lang/String;

    .line 102
    invoke-interface {p1}, Ljavax/servlet/annotation/MultipartConfig;->fileSizeThreshold()I

    move-result v0

    iput v0, p0, Ljavax/servlet/MultipartConfigElement;->fileSizeThreshold:I

    .line 103
    invoke-interface {p1}, Ljavax/servlet/annotation/MultipartConfig;->maxFileSize()J

    move-result-wide v0

    iput-wide v0, p0, Ljavax/servlet/MultipartConfigElement;->maxFileSize:J

    .line 104
    invoke-interface {p1}, Ljavax/servlet/annotation/MultipartConfig;->maxRequestSize()J

    move-result-wide v0

    iput-wide v0, p0, Ljavax/servlet/MultipartConfigElement;->maxRequestSize:J

    return-void
.end method


# virtual methods
.method public getFileSizeThreshold()I
    .locals 1

    .line 140
    iget v0, p0, Ljavax/servlet/MultipartConfigElement;->fileSizeThreshold:I

    return v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Ljavax/servlet/MultipartConfigElement;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxFileSize()J
    .locals 2

    .line 122
    iget-wide v0, p0, Ljavax/servlet/MultipartConfigElement;->maxFileSize:J

    return-wide v0
.end method

.method public getMaxRequestSize()J
    .locals 2

    .line 131
    iget-wide v0, p0, Ljavax/servlet/MultipartConfigElement;->maxRequestSize:J

    return-wide v0
.end method
