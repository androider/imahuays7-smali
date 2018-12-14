.class public Lorg/fourthline/cling/binding/xml/RecoveringUDA10DeviceDescriptorBinderImpl;
.super Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;
.source "RecoveringUDA10DeviceDescriptorBinderImpl.java"


# static fields
.field private static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lorg/fourthline/cling/binding/xml/RecoveringUDA10DeviceDescriptorBinderImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/fourthline/cling/binding/xml/RecoveringUDA10DeviceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;-><init>()V

    return-void
.end method

.method private fixGarbageLeadingChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "<?xml"

    .line 133
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-object p1

    .line 135
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public describe(Lorg/fourthline/cling/model/meta/Device;Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Device;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/fourthline/cling/model/meta/Device;",
            ">(TD;",
            "Ljava/lang/String;",
            ")TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/binding/xml/DescriptorBindingException;,
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 46
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object p2, v0

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_3

    :catch_1
    move-exception v0

    goto :goto_1

    .line 47
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->describe(Lorg/fourthline/cling/model/meta/Device;Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Device;

    move-result-object v0
    :try_end_0
    .catch Lorg/fourthline/cling/binding/xml/DescriptorBindingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/fourthline/cling/model/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 50
    :goto_1
    :try_start_1
    sget-object v1, Lorg/fourthline/cling/binding/xml/RecoveringUDA10DeviceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Regular parsing failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 57
    invoke-direct {p0, p2}, Lorg/fourthline/cling/binding/xml/RecoveringUDA10DeviceDescriptorBinderImpl;->fixGarbageLeadingChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Lorg/fourthline/cling/model/ValidationException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_1

    .line 60
    :try_start_2
    invoke-super {p0, p1, v1}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->describe(Lorg/fourthline/cling/model/meta/Device;Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Device;

    move-result-object v1
    :try_end_2
    .catch Lorg/fourthline/cling/binding/xml/DescriptorBindingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/fourthline/cling/model/ValidationException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catch_2
    move-exception v1

    .line 63
    :try_start_3
    sget-object v2, Lorg/fourthline/cling/binding/xml/RecoveringUDA10DeviceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing leading garbage didn\'t work: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 67
    :cond_1
    invoke-virtual {p0, p2, v0}, Lorg/fourthline/cling/binding/xml/RecoveringUDA10DeviceDescriptorBinderImpl;->fixGarbageTrailingChars(Ljava/lang/String;Lorg/fourthline/cling/binding/xml/DescriptorBindingException;)Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Lorg/fourthline/cling/model/ValidationException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v1, :cond_2

    .line 70
    :try_start_4
    invoke-super {p0, p1, v1}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->describe(Lorg/fourthline/cling/model/meta/Device;Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Device;

    move-result-object v1
    :try_end_4
    .catch Lorg/fourthline/cling/binding/xml/DescriptorBindingException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/fourthline/cling/model/ValidationException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v1

    :catch_3
    move-exception v1

    .line 73
    :try_start_5
    sget-object v2, Lorg/fourthline/cling/binding/xml/RecoveringUDA10DeviceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing trailing garbage didn\'t work: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x0

    move-object v2, p2

    move-object v3, v0

    :goto_2
    const/4 v4, 0x5

    if-ge v1, v4, :cond_3

    .line 81
    invoke-virtual {p0, v2, v3}, Lorg/fourthline/cling/binding/xml/RecoveringUDA10DeviceDescriptorBinderImpl;->fixMissingNamespaces(Ljava/lang/String;Lorg/fourthline/cling/binding/xml/DescriptorBindingException;)Ljava/lang/String;

    move-result-object v2
    :try_end_5
    .catch Lorg/fourthline/cling/model/ValidationException; {:try_start_5 .. :try_end_5} :catch_0

    if-eqz v2, :cond_3

    .line 84
    :try_start_6
    invoke-super {p0, p1, v2}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->describe(Lorg/fourthline/cling/model/meta/Device;Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Device;

    move-result-object v3
    :try_end_6
    .catch Lorg/fourthline/cling/binding/xml/DescriptorBindingException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/fourthline/cling/model/ValidationException; {:try_start_6 .. :try_end_6} :catch_0

    return-object v3

    :catch_4
    move-exception v3

    .line 87
    :try_start_7
    sget-object v4, Lorg/fourthline/cling/binding/xml/RecoveringUDA10DeviceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fixing namespace prefix didn\'t work: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 95
    :cond_3
    invoke-static {p2}, Lorg/seamless/xml/XmlPullParserUtils;->fixXMLEntities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_7
    .catch Lorg/fourthline/cling/model/ValidationException; {:try_start_7 .. :try_end_7} :catch_0

    if-nez v2, :cond_4

    .line 98
    :try_start_8
    invoke-super {p0, p1, v1}, Lorg/fourthline/cling/binding/xml/UDA10DeviceDescriptorBinderImpl;->describe(Lorg/fourthline/cling/model/meta/Device;Ljava/lang/String;)Lorg/fourthline/cling/model/meta/Device;

    move-result-object p1
    :try_end_8
    .catch Lorg/fourthline/cling/binding/xml/DescriptorBindingException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lorg/fourthline/cling/model/ValidationException; {:try_start_8 .. :try_end_8} :catch_0

    return-object p1

    :catch_5
    move-exception p1

    .line 101
    :try_start_9
    sget-object v1, Lorg/fourthline/cling/binding/xml/RecoveringUDA10DeviceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fixing XML entities didn\'t work: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/seamless/util/Exceptions;->unwrap(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 105
    :cond_4
    invoke-virtual {p0, p2, v0}, Lorg/fourthline/cling/binding/xml/RecoveringUDA10DeviceDescriptorBinderImpl;->handleInvalidDescriptor(Ljava/lang/String;Lorg/fourthline/cling/binding/xml/DescriptorBindingException;)V
    :try_end_9
    .catch Lorg/fourthline/cling/model/ValidationException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_4

    :goto_3
    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0, p2, v0, p1}, Lorg/fourthline/cling/binding/xml/RecoveringUDA10DeviceDescriptorBinderImpl;->handleInvalidDevice(Ljava/lang/String;Lorg/fourthline/cling/model/meta/Device;Lorg/fourthline/cling/model/ValidationException;)Lorg/fourthline/cling/model/meta/Device;

    move-result-object p1

    if-eqz p1, :cond_5

    return-object p1

    .line 112
    :cond_5
    :goto_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No device produced, did you swallow exceptions in your subclass?"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected fixGarbageTrailingChars(Ljava/lang/String;Lorg/fourthline/cling/binding/xml/DescriptorBindingException;)Ljava/lang/String;
    .locals 3

    const-string p2, "</root>"

    .line 139
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 141
    sget-object p1, Lorg/fourthline/cling/binding/xml/RecoveringUDA10DeviceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    const-string p2, "No closing </root> element in descriptor"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-object v0

    .line 144
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "</root>"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, p2

    if-eq v1, v2, :cond_1

    .line 145
    sget-object v0, Lorg/fourthline/cling/binding/xml/RecoveringUDA10DeviceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    const-string v1, "Detected garbage characters after <root> node, removing"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</root>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method protected fixMissingNamespaces(Ljava/lang/String;Lorg/fourthline/cling/binding/xml/DescriptorBindingException;)Ljava/lang/String;
    .locals 7

    .line 156
    invoke-virtual {p2}, Lorg/fourthline/cling/binding/xml/DescriptorBindingException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    .line 157
    instance-of v0, p2, Lorg/xml/sax/SAXParseException;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/seamless/xml/ParserException;

    if-nez v0, :cond_0

    return-object v1

    .line 159
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    return-object v1

    :cond_1
    const-string v0, "The prefix \"(.*)\" for element"

    .line 163
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 164
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-eq v2, v3, :cond_3

    :cond_2
    const-string v0, "undefined prefix: ([^ ]*)"

    .line 166
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 167
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result p2

    if-eq p2, v3, :cond_3

    goto/16 :goto_2

    .line 172
    :cond_3
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    .line 173
    sget-object v0, Lorg/fourthline/cling/binding/xml/RecoveringUDA10DeviceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fixing missing namespace declaration for: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    const-string v0, "<root([^>]*)"

    .line 176
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 177
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    if-eq v2, v3, :cond_4

    goto :goto_1

    .line 183
    :cond_4
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 184
    sget-object v4, Lorg/fourthline/cling/binding/xml/RecoveringUDA10DeviceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Preserving existing <root> element attributes/namespace declarations: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const-string v0, "<root[^>]*>(.*)</root>"

    const/16 v4, 0x20

    .line 187
    invoke-static {v0, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 188
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 189
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    if-eq v0, v3, :cond_5

    goto :goto_0

    .line 194
    :cond_5
    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\" ?><root "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v4, "xmlns:%s=\"urn:schemas-dlna-org:device-1-0\""

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v6

    .line 199
    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ">"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "</root>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 190
    :cond_6
    :goto_0
    sget-object p1, Lorg/fourthline/cling/binding/xml/RecoveringUDA10DeviceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    const-string p2, "Could not extract body of <root> element"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-object v1

    .line 179
    :cond_7
    :goto_1
    sget-object p1, Lorg/fourthline/cling/binding/xml/RecoveringUDA10DeviceDescriptorBinderImpl;->log:Ljava/util/logging/Logger;

    const-string p2, "Could not find <root> element attributes"

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-object v1

    :cond_8
    :goto_2
    return-object v1
.end method

.method protected handleInvalidDescriptor(Ljava/lang/String;Lorg/fourthline/cling/binding/xml/DescriptorBindingException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/binding/xml/DescriptorBindingException;
        }
    .end annotation

    .line 222
    throw p2
.end method

.method protected handleInvalidDevice(Ljava/lang/String;Lorg/fourthline/cling/model/meta/Device;Lorg/fourthline/cling/model/ValidationException;)Lorg/fourthline/cling/model/meta/Device;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Lorg/fourthline/cling/model/meta/Device;",
            ">(",
            "Ljava/lang/String;",
            "TD;",
            "Lorg/fourthline/cling/model/ValidationException;",
            ")TD;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/fourthline/cling/model/ValidationException;
        }
    .end annotation

    .line 247
    throw p3
.end method
