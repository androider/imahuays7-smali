.class public Lorg/fourthline/cling/model/profile/HeaderDeviceDetailsProvider$Key;
.super Ljava/lang/Object;
.source "HeaderDeviceDetailsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/fourthline/cling/model/profile/HeaderDeviceDetailsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Key"
.end annotation


# instance fields
.field final headerName:Ljava/lang/String;

.field final pattern:Ljava/util/regex/Pattern;

.field final valuePattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/fourthline/cling/model/profile/HeaderDeviceDetailsProvider$Key;->headerName:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lorg/fourthline/cling/model/profile/HeaderDeviceDetailsProvider$Key;->valuePattern:Ljava/lang/String;

    const/4 p1, 0x2

    .line 49
    invoke-static {p2, p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lorg/fourthline/cling/model/profile/HeaderDeviceDetailsProvider$Key;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public getHeaderName()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/fourthline/cling/model/profile/HeaderDeviceDetailsProvider$Key;->headerName:Ljava/lang/String;

    return-object v0
.end method

.method public getValuePattern()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/fourthline/cling/model/profile/HeaderDeviceDetailsProvider$Key;->valuePattern:Ljava/lang/String;

    return-object v0
.end method

.method public isValuePatternMatch(Ljava/lang/String;)Z
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/fourthline/cling/model/profile/HeaderDeviceDetailsProvider$Key;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method
