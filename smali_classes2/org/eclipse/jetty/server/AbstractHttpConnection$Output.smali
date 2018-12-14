.class public Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;
.super Lorg/eclipse/jetty/server/HttpOutput;
.source "AbstractHttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/AbstractHttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Output"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    .locals 0

    .line 1069
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .line 1070
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/HttpOutput;-><init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1080
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1083
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/AbstractGenerator;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1084
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->commitResponse(Z)V

    goto :goto_0

    .line 1086
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->flushResponse()V

    .line 1088
    :goto_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/HttpOutput;->close()V

    return-void
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1099
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/AbstractGenerator;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1100
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->commitResponse(Z)V

    .line 1101
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/HttpOutput;->flush()V

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1111
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1112
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1113
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getPrintWriter(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    .line 1114
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public sendContent(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1128
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1129
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Closed"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1131
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/AbstractGenerator;->isWritten()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1132
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "!empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1135
    :cond_1
    instance-of v0, p1, Lorg/eclipse/jetty/http/HttpContent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    .line 1137
    check-cast p1, Lorg/eclipse/jetty/http/HttpContent;

    .line 1138
    invoke-interface {p1}, Lorg/eclipse/jetty/http/HttpContent;->getContentType()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1139
    iget-object v3, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v3, v3, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/http/HttpFields;->containsKey(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1141
    iget-object v3, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v3, v3, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/Response;->getSetCharacterEncoding()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1143
    iget-object v3, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v3, v3, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v3, v4, v0}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_0

    .line 1146
    :cond_2
    instance-of v4, v0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v4, :cond_4

    .line 1148
    move-object v4, v0

    check-cast v4, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v4, v3}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getAssociate(Ljava/lang/Object;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1150
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v3, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v3, v4}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_0

    .line 1153
    :cond_3
    iget-object v4, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v4, v4, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v5, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ";charset="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";= "

    invoke-static {v3, v0}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto :goto_0

    .line 1159
    :cond_4
    iget-object v4, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v4, v4, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v5, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ";charset="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";= "

    invoke-static {v3, v0}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    .line 1164
    :cond_5
    :goto_0
    invoke-interface {p1}, Lorg/eclipse/jetty/http/HttpContent;->getContentLength()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_6

    .line 1165
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v3, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_LENGTH_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {p1}, Lorg/eclipse/jetty/http/HttpContent;->getContentLength()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/eclipse/jetty/http/HttpFields;->putLongField(Lorg/eclipse/jetty/io/Buffer;J)V

    .line 1166
    :cond_6
    invoke-interface {p1}, Lorg/eclipse/jetty/http/HttpContent;->getLastModified()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 1167
    invoke-interface {p1}, Lorg/eclipse/jetty/http/HttpContent;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v3

    if-eqz v0, :cond_7

    .line 1170
    iget-object v3, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v3, v3, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaders;->LAST_MODIFIED_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v3, v4, v0}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_1

    .line 1172
    :cond_7
    invoke-interface {p1}, Lorg/eclipse/jetty/http/HttpContent;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    if-eqz v0, :cond_8

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_8

    .line 1175
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v5, Lorg/eclipse/jetty/http/HttpHeaders;->LAST_MODIFIED_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v5, v3, v4}, Lorg/eclipse/jetty/http/HttpFields;->putDateField(Lorg/eclipse/jetty/io/Buffer;J)V

    .line 1178
    :cond_8
    :goto_1
    invoke-interface {p1}, Lorg/eclipse/jetty/http/HttpContent;->getETag()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1180
    iget-object v3, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v3, v3, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaders;->ETAG_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v3, v4, v0}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 1183
    :cond_9
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    instance-of v0, v0, Lorg/eclipse/jetty/server/nio/NIOConnector;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    check-cast v0, Lorg/eclipse/jetty/server/nio/NIOConnector;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/nio/NIOConnector;->getUseDirectBuffers()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    instance-of v0, v0, Lorg/eclipse/jetty/server/ssl/SslConnector;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_2

    :cond_a
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_b

    .line 1184
    invoke-interface {p1}, Lorg/eclipse/jetty/http/HttpContent;->getDirectBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    goto :goto_3

    :cond_b
    invoke-interface {p1}, Lorg/eclipse/jetty/http/HttpContent;->getIndirectBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    :goto_3
    if-nez v0, :cond_c

    .line 1186
    invoke-interface {p1}, Lorg/eclipse/jetty/http/HttpContent;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    goto :goto_4

    :cond_c
    move-object p1, v0

    goto :goto_4

    .line 1188
    :cond_d
    instance-of v0, p1, Lorg/eclipse/jetty/util/resource/Resource;

    if-eqz v0, :cond_e

    .line 1190
    move-object v2, p1

    check-cast v2, Lorg/eclipse/jetty/util/resource/Resource;

    .line 1191
    iget-object p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object p1, p1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->LAST_MODIFIED_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v3

    invoke-virtual {p1, v0, v3, v4}, Lorg/eclipse/jetty/http/HttpFields;->putDateField(Lorg/eclipse/jetty/io/Buffer;J)V

    .line 1192
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 1196
    :cond_e
    :goto_4
    instance-of v0, p1, Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_f

    .line 1198
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    check-cast p1, Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jetty/http/AbstractGenerator;->addContent(Lorg/eclipse/jetty/io/Buffer;Z)V

    .line 1199
    iget-object p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {p1, v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->commitResponse(Z)V

    goto :goto_6

    .line 1201
    :cond_f
    instance-of v0, p1, Ljava/io/InputStream;

    if-eqz v0, :cond_13

    .line 1203
    check-cast p1, Ljava/io/InputStream;

    .line 1207
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/AbstractGenerator;->prepareUncheckedAddContent()I

    move-result v0

    .line 1208
    iget-object v1, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/AbstractGenerator;->getUncheckedBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 1210
    invoke-interface {v1, p1, v0}, Lorg/eclipse/jetty/io/Buffer;->readFrom(Ljava/io/InputStream;I)I

    move-result v0

    :goto_5
    if-ltz v0, :cond_10

    .line 1214
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/AbstractGenerator;->completeUncheckedAddContent()V

    .line 1215
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_out:Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->flush()V

    .line 1217
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/AbstractGenerator;->prepareUncheckedAddContent()I

    move-result v0

    .line 1218
    iget-object v1, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v1}, Lorg/eclipse/jetty/http/AbstractGenerator;->getUncheckedBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 1219
    invoke-interface {v1, p1, v0}, Lorg/eclipse/jetty/io/Buffer;->readFrom(Ljava/io/InputStream;I)I

    move-result v0

    goto :goto_5

    .line 1221
    :cond_10
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/AbstractGenerator;->completeUncheckedAddContent()V

    .line 1222
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_out:Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_11

    .line 1227
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->release()V

    goto :goto_6

    .line 1229
    :cond_11
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :goto_6
    return-void

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_12

    .line 1227
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->release()V

    goto :goto_7

    .line 1229
    :cond_12
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :goto_7
    throw v0

    .line 1233
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown content type?"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendResponse(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1120
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    check-cast v0, Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpGenerator;->sendResponse(Lorg/eclipse/jetty/io/Buffer;)V

    return-void
.end method
