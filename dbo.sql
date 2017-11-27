/*
Navicat SQL Server Data Transfer

Source Server         : localSQL Server
Source Server Version : 130000
Source Host           : 127.0.0.1:1433
Source Database       : xueji_webpage
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 130000
File Encoding         : 65001

Date: 2017-11-27 20:42:52
*/


-- ----------------------------
-- Table structure for classes
-- ----------------------------
DROP TABLE [dbo].[classes]
GO
CREATE TABLE [dbo].[classes] (
[id] int NOT NULL IDENTITY(12,1) ,
[majors_id] int NOT NULL ,
[classes_year] int NOT NULL ,
[teachers_id] int NOT NULL 
)


GO

-- ----------------------------
-- Records of classes
-- ----------------------------
SET IDENTITY_INSERT [dbo].[classes] ON
GO
INSERT INTO [dbo].[classes] ([id], [majors_id], [classes_year], [teachers_id]) VALUES (N'1', N'1', N'2017', N'1')
GO
GO
INSERT INTO [dbo].[classes] ([id], [majors_id], [classes_year], [teachers_id]) VALUES (N'2', N'2', N'2017', N'4')
GO
GO
INSERT INTO [dbo].[classes] ([id], [majors_id], [classes_year], [teachers_id]) VALUES (N'4', N'1', N'2016', N'3')
GO
GO
INSERT INTO [dbo].[classes] ([id], [majors_id], [classes_year], [teachers_id]) VALUES (N'5', N'2', N'2016', N'3')
GO
GO
INSERT INTO [dbo].[classes] ([id], [majors_id], [classes_year], [teachers_id]) VALUES (N'6', N'4', N'2016', N'5')
GO
GO
INSERT INTO [dbo].[classes] ([id], [majors_id], [classes_year], [teachers_id]) VALUES (N'7', N'5', N'2016', N'3')
GO
GO
INSERT INTO [dbo].[classes] ([id], [majors_id], [classes_year], [teachers_id]) VALUES (N'8', N'6', N'2016', N'3')
GO
GO
INSERT INTO [dbo].[classes] ([id], [majors_id], [classes_year], [teachers_id]) VALUES (N'9', N'7', N'2016', N'3')
GO
GO
INSERT INTO [dbo].[classes] ([id], [majors_id], [classes_year], [teachers_id]) VALUES (N'10', N'12', N'2016', N'3')
GO
GO
INSERT INTO [dbo].[classes] ([id], [majors_id], [classes_year], [teachers_id]) VALUES (N'11', N'12', N'2017', N'4')
GO
GO
SET IDENTITY_INSERT [dbo].[classes] OFF
GO

-- ----------------------------
-- Table structure for courses
-- ----------------------------
DROP TABLE [dbo].[courses]
GO
CREATE TABLE [dbo].[courses] (
[id] int NOT NULL IDENTITY(8,1) ,
[courses_name] nvarchar(254) NOT NULL ,
[teachers_id] int NOT NULL 
)


GO

-- ----------------------------
-- Records of courses
-- ----------------------------
SET IDENTITY_INSERT [dbo].[courses] ON
GO
INSERT INTO [dbo].[courses] ([id], [courses_name], [teachers_id]) VALUES (N'2', N'SQL Server', N'2')
GO
GO
INSERT INTO [dbo].[courses] ([id], [courses_name], [teachers_id]) VALUES (N'3', N'Java Script', N'2')
GO
GO
INSERT INTO [dbo].[courses] ([id], [courses_name], [teachers_id]) VALUES (N'4', N'WinForm', N'2')
GO
GO
INSERT INTO [dbo].[courses] ([id], [courses_name], [teachers_id]) VALUES (N'5', N'Illustrator', N'14')
GO
GO
INSERT INTO [dbo].[courses] ([id], [courses_name], [teachers_id]) VALUES (N'6', N'MySQL', N'15')
GO
GO
INSERT INTO [dbo].[courses] ([id], [courses_name], [teachers_id]) VALUES (N'7', N'中职英语', N'11')
GO
GO
SET IDENTITY_INSERT [dbo].[courses] OFF
GO

-- ----------------------------
-- Table structure for exams
-- ----------------------------
DROP TABLE [dbo].[exams]
GO
CREATE TABLE [dbo].[exams] (
[id] int NOT NULL IDENTITY(6,1) ,
[exams_name] nvarchar(254) NOT NULL ,
[exams_date] datetime NOT NULL ,
[exams_type] int NOT NULL 
)


GO

-- ----------------------------
-- Records of exams
-- ----------------------------
SET IDENTITY_INSERT [dbo].[exams] ON
GO
INSERT INTO [dbo].[exams] ([id], [exams_name], [exams_date], [exams_type]) VALUES (N'4', N'哎哟哟测试', N'2017-06-01 00:00:00.000', N'1')
GO
GO
INSERT INTO [dbo].[exams] ([id], [exams_name], [exams_date], [exams_type]) VALUES (N'5', N'测试八下嗯', N'2017-05-24 00:00:00.000', N'5')
GO
GO
SET IDENTITY_INSERT [dbo].[exams] OFF
GO

-- ----------------------------
-- Table structure for joke
-- ----------------------------
DROP TABLE [dbo].[joke]
GO
CREATE TABLE [dbo].[joke] (
[id] int NOT NULL IDENTITY(10,1) ,
[title] nvarchar(254) NOT NULL ,
[content] nvarchar(MAX) NOT NULL ,
[adddate] datetime NULL 
)


GO

-- ----------------------------
-- Records of joke
-- ----------------------------
SET IDENTITY_INSERT [dbo].[joke] ON
GO
INSERT INTO [dbo].[joke] ([id], [title], [content], [adddate]) VALUES (N'1', N'123', N'123', N'2017-07-12 14:37:41.877')
GO
GO
INSERT INTO [dbo].[joke] ([id], [title], [content], [adddate]) VALUES (N'2', N'222', N'<p>&nbsp; &nbsp; &nbsp; &nbsp;这里写你的初始化内容
 &nbsp; &nbsp;</p>', N'2017-07-12 15:37:41.877')
GO
GO
INSERT INTO [dbo].[joke] ([id], [title], [content], [adddate]) VALUES (N'3', N'12341234', N'<p>123412341234</p>', N'2017-07-12 16:37:41.877')
GO
GO
INSERT INTO [dbo].[joke] ([id], [title], [content], [adddate]) VALUES (N'4', N'测试代码功能', N'<p>&nbsp; &nbsp; &nbsp; &nbsp;这里写你的初始化内容</p><pre class="brush:c#;toolbar:false">@{

Layout&nbsp;=&nbsp;&quot;~/_xuejiLayout.cshtml&quot;;

var&nbsp;db&nbsp;=&nbsp;Database.Open(&quot;StarterSite&quot;);
var&nbsp;title&nbsp;=&nbsp;Request.Form[&quot;title&quot;];
var&nbsp;content&nbsp;=&nbsp;Request.Unvalidated().Form[&quot;content&quot;];
if&nbsp;(IsPost)
{
var&nbsp;ls&nbsp;=&nbsp;&quot;insert&nbsp;into&nbsp;&nbsp;joke&nbsp;(title,content,adddate)&nbsp;values&nbsp;(@0,@1,getDate())&quot;;
db.Execute(ls,&nbsp;title,&nbsp;content);
}
}

&lt;p&gt;笑话标题&lt;/p&gt;
&lt;form&nbsp;method=&quot;post&quot;&nbsp;action=&quot;~/addjoke&quot;&gt;
&lt;label&nbsp;for=&quot;&nbsp;title&quot;&gt;笑话标题：&nbsp;&lt;/label&gt;
&lt;input&nbsp;type=&quot;text&quot;&nbsp;name=&quot;title&quot;&nbsp;value=&quot;&quot;/&gt;
&lt;p&gt;内容&lt;/p&gt;
&lt;label&nbsp;for=&quot;&nbsp;content&quot;&gt;笑话内容：&nbsp;&lt;/label&gt;
&lt;!--&nbsp;加载编辑器的容器&nbsp;--&gt;
&lt;script&nbsp;id=&quot;container&quot;&nbsp;name=&quot;content&quot;&nbsp;type=&quot;text/plain&quot;&gt;
这里写你的初始化内容
&lt;/script&gt;
&lt;!--&nbsp;配置文件&nbsp;--&gt;
&lt;script&nbsp;type=&quot;text/javascript&quot;&nbsp;src=&quot;ueditor.config.js&quot;&gt;&lt;/script&gt;
&lt;!--&nbsp;编辑器源码文件&nbsp;--&gt;
&lt;script&nbsp;type=&quot;text/javascript&quot;&nbsp;src=&quot;ueditor.all.js&quot;&gt;&lt;/script&gt;
&lt;!--&nbsp;实例化编辑器&nbsp;--&gt;
&lt;script&nbsp;type=&quot;text/javascript&quot;&gt;
var&nbsp;ue&nbsp;=&nbsp;UE.getEditor(&#39;container&#39;);
&lt;/script&gt;
&lt;input&nbsp;type=&quot;submit&quot;&nbsp;name=&quot;button&quot;&nbsp;value=&quot;提交&quot;&nbsp;/&gt;
&lt;/form&gt;</pre><p>&nbsp; &nbsp; 上面的代码口耐不？哈哈哈<br/></p>', N'2017-07-12 20:57:36.923')
GO
GO
INSERT INTO [dbo].[joke] ([id], [title], [content], [adddate]) VALUES (N'5', N'重新测试代码', N'<p>怎么没有行号了呢？怪了</p><pre class="brush:c#;toolbar:false">@{
Layout&nbsp;=&nbsp;&quot;~/_xuejiLayout.cshtml&quot;;
var&nbsp;db&nbsp;=&nbsp;Database.Open(&quot;startersite&quot;);
int&nbsp;id&nbsp;=&nbsp;Convert.ToInt16(Request.QueryString[&quot;id&quot;]);
var&nbsp;queryCommand&nbsp;=&nbsp;&quot;select&nbsp;id,title,content,adddate&nbsp;from&nbsp;joke&nbsp;where&nbsp;id=&quot;&nbsp;+&nbsp;id;
var&nbsp;getjoke&nbsp;=&nbsp;db.QuerySingle(queryCommand);
}
&lt;h2&gt;标题：@getjoke.title&lt;/h2&gt;
&lt;br&gt;&lt;h3&gt;日期：@getjoke.adddate&lt;/h3&gt;&nbsp;&lt;br&gt;
正文：
&lt;div&nbsp;class=&quot;content&quot;&gt;
@Html.Raw(getjoke.content)&nbsp;
&lt;/div&gt;
&lt;br&gt;</pre><p><br/></p>', N'2017-07-12 20:59:20.977')
GO
GO
INSERT INTO [dbo].[joke] ([id], [title], [content], [adddate]) VALUES (N'6', N'偶偶', N'<pre class="brush:c#;toolbar:false">@{
Layout&nbsp;=&nbsp;&quot;~/_xuejiLayout.cshtml&quot;;
var&nbsp;db&nbsp;=&nbsp;Database.Open(&quot;startersite&quot;);
int&nbsp;id&nbsp;=&nbsp;Convert.ToInt16(Request.QueryString[&quot;id&quot;]);
var&nbsp;queryCommand&nbsp;=&nbsp;&quot;select&nbsp;id,title,content,adddate&nbsp;from&nbsp;joke&nbsp;where&nbsp;id=&quot;&nbsp;+&nbsp;id;
var&nbsp;getjoke&nbsp;=&nbsp;db.QuerySingle(queryCommand);
}
&lt;script&nbsp;type=&quot;text/javascript&quot;charset=&quot;utf-8&quot;&nbsp;src=&nbsp;&quot;ueditor.config.js&quot;&gt;&lt;/script&gt;&nbsp;&nbsp;
&lt;script&nbsp;type=&quot;text/javascript&quot;&nbsp;charset=&quot;utf-8&quot;&nbsp;src=&quot;ueditor.all.min.js&quot;&gt;&lt;/script&gt;&nbsp;&nbsp;
&lt;link&nbsp;rel=&quot;stylesheet&quot;&nbsp;type=&quot;text/css&quot;&nbsp;href=&quot;themes/default/css/ueditor.css&quot;&gt;&nbsp;&nbsp;
&lt;script&nbsp;type=&quot;text/javascript&quot;&nbsp;charset=&quot;utf-8&quot;&nbsp;src=&quot;lang/zh-cn/zh-cn.js&quot;&gt;&lt;/script&gt;&nbsp;
&lt;h2&gt;标题：@getjoke.title&lt;/h2&gt;
&lt;br&gt;&lt;h3&gt;日期：@getjoke.adddate&lt;/h3&gt;&nbsp;&lt;br&gt;
正文：
&lt;div&nbsp;class=&quot;content&quot;&gt;
@Html.Raw(getjoke.content)&nbsp;
&lt;/div&gt;
&lt;br&gt;</pre><p>&nbsp; &nbsp; &nbsp; &nbsp;这里写你的初始化内容
 &nbsp; &nbsp;<br/></p>', N'2017-07-12 21:59:07.257')
GO
GO
INSERT INTO [dbo].[joke] ([id], [title], [content], [adddate]) VALUES (N'7', N'傻才', N'<p>看这里！</p><pre class="brush:html;toolbar:false">@{

&nbsp;&nbsp;&nbsp;&nbsp;Layout&nbsp;=&nbsp;&quot;~/_xuejiLayout.cshtml&quot;;

&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;db&nbsp;=&nbsp;Database.Open(&quot;StarterSite&quot;);
&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;title&nbsp;=&nbsp;Request.Form[&quot;title&quot;];
&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;content&nbsp;=&nbsp;Request.Unvalidated().Form[&quot;content&quot;];
&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(IsPost)
&nbsp;&nbsp;&nbsp;&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;ls&nbsp;=&nbsp;&quot;insert&nbsp;into&nbsp;&nbsp;joke&nbsp;(title,content,adddate)&nbsp;values&nbsp;(@0,@1,getDate())&quot;;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;db.Execute(ls,&nbsp;title,&nbsp;content);
&nbsp;&nbsp;&nbsp;&nbsp;}
}
&lt;p&gt;笑话标题&lt;/p&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;form&nbsp;method=&quot;post&quot;&nbsp;action=&quot;~/addjoke&quot;&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;label&nbsp;for=&quot;&nbsp;title&quot;&gt;笑话标题：&nbsp;&lt;/label&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;input&nbsp;type=&quot;text&quot;&nbsp;name=&quot;title&quot;&nbsp;value=&quot;&quot;/&gt;
&lt;p&gt;内容&lt;/p&gt;
&lt;label&nbsp;for=&quot;&nbsp;content&quot;&gt;笑话内容：&nbsp;&lt;/label&gt;
&lt;!--&nbsp;加载编辑器的容器&nbsp;--&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;script&nbsp;id=&quot;container&quot;&nbsp;name=&quot;content&quot;&nbsp;type=&quot;text/plain&quot;&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;这里写你的初始化内容
&nbsp;&nbsp;&nbsp;&nbsp;&lt;/script&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;!--&nbsp;配置文件&nbsp;--&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;script&nbsp;type=&quot;text/javascript&quot;&nbsp;charset=&quot;utf-8&quot;&nbsp;src=&quot;ueditor.config.js&quot;&gt;&lt;/script&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;!--&nbsp;编辑器源码文件&nbsp;--&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;script&nbsp;type=&quot;text/javascript&quot;&nbsp;charset=&quot;utf-8&quot;&nbsp;src=&quot;ueditor.all.js&quot;&gt;&lt;/script&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;!--建议手动加载语言，避免在ie下有时因为加载语言失败导致编辑器加载失败--&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文--&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;script&nbsp;type=&quot;text/javascript&quot;&nbsp;charset=&quot;utf-8&quot;&nbsp;src=&quot;lang/zh-cn/zh-cn.js&quot;&gt;&lt;/script&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;!--&nbsp;实例化编辑器&nbsp;--&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;script&nbsp;type=&quot;text/javascript&quot;&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;ue&nbsp;=&nbsp;UE.getEditor(&#39;container&#39;);
&nbsp;&nbsp;&nbsp;&nbsp;&lt;/script&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;input&nbsp;type=&quot;submit&quot;&nbsp;name=&quot;button&quot;&nbsp;value=&quot;提交&quot;&nbsp;/&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/form&gt;</pre><p><br/></p>', N'2017-07-14 09:38:28.143')
GO
GO
INSERT INTO [dbo].[joke] ([id], [title], [content], [adddate]) VALUES (N'8', N'o?', N'<p>标题</p><p>内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容</p>', N'2017-07-14 11:17:34.160')
GO
GO
INSERT INTO [dbo].[joke] ([id], [title], [content], [adddate]) VALUES (N'9', N'‘’‘’‘', N'<p>
		这里写你的初始化内容	</p><pre class="brush:c#;toolbar:false">@{

&nbsp;&nbsp;&nbsp;&nbsp;Layout&nbsp;=&nbsp;&quot;~/_xuejiLayout.cshtml&quot;;

&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;db&nbsp;=&nbsp;Database.Open(&quot;StarterSite&quot;);
&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;title&nbsp;=&nbsp;Request.Form[&quot;title&quot;];
&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;content&nbsp;=&nbsp;Request.Unvalidated().Form[&quot;content&quot;];
&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(IsPost)
&nbsp;&nbsp;&nbsp;&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;ls&nbsp;=&nbsp;&quot;insert&nbsp;into&nbsp;&nbsp;joke&nbsp;(title,content,adddate)&nbsp;values&nbsp;(@0,@1,getDate())&quot;;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;db.Execute(ls,&nbsp;title,&nbsp;content);
&nbsp;&nbsp;&nbsp;&nbsp;}
}
&lt;p&gt;笑话标题&lt;/p&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;form&nbsp;method=&quot;post&quot;&nbsp;action=&quot;~/addjoke&quot;&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;label&nbsp;for=&quot;&nbsp;title&quot;&gt;笑话标题：&nbsp;&lt;/label&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;input&nbsp;type=&quot;text&quot;&nbsp;name=&quot;title&quot;&nbsp;value=&quot;&quot;/&gt;
&lt;p&gt;内容&lt;/p&gt;
&lt;label&nbsp;for=&quot;&nbsp;content&quot;&gt;笑话内容：&nbsp;&lt;/label&gt;
&lt;!--&nbsp;加载编辑器的容器&nbsp;21-34行就是负责编辑器的代码--&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;script&nbsp;id=&quot;container&quot;&nbsp;name=&quot;content&quot;&nbsp;type=&quot;text/plain&quot;&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;这里写你的初始化内容
&nbsp;&nbsp;&nbsp;&nbsp;&lt;/script&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;!--&nbsp;配置文件&nbsp;--&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;script&nbsp;type=&quot;text/javascript&quot;&nbsp;charset=&quot;utf-8&quot;&nbsp;src=&quot;ueditor.config.js&quot;&gt;&lt;/script&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;!--&nbsp;编辑器源码文件&nbsp;--&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;script&nbsp;type=&quot;text/javascript&quot;&nbsp;charset=&quot;utf-8&quot;&nbsp;src=&quot;ueditor.all.js&quot;&gt;&lt;/script&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;!--建议手动加载语言，避免在ie下有时因为加载语言失败导致编辑器加载失败--&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文--&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;script&nbsp;type=&quot;text/javascript&quot;&nbsp;charset=&quot;utf-8&quot;&nbsp;src=&quot;lang/zh-cn/zh-cn.js&quot;&gt;&lt;/script&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;!--&nbsp;实例化编辑器&nbsp;--&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;script&nbsp;type=&quot;text/javascript&quot;&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;ue&nbsp;=&nbsp;UE.getEditor(&#39;container&#39;);
&nbsp;&nbsp;&nbsp;&nbsp;&lt;/script&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;input&nbsp;type=&quot;submit&quot;&nbsp;name=&quot;button&quot;&nbsp;value=&quot;提交&quot;&nbsp;/&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/form&gt;</pre><p><br/></p>', N'2017-07-14 12:12:19.507')
GO
GO
INSERT INTO [dbo].[joke] ([id], [title], [content], [adddate]) VALUES (N'10', N'666', N'<p>
		这里写你的初始化内容	</p><pre class="brush:html;toolbar:false">@{
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;Layout&nbsp;=&nbsp;&quot;~/_xuejiLayout.cshtml&quot;;
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;db&nbsp;=&nbsp;Database.Open(&quot;StarterSite&quot;);
&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;title&nbsp;=&nbsp;Request.Form[&quot;title&quot;];
&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;content&nbsp;=&nbsp;Request.Unvalidated().Form[&quot;content&quot;];
&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(IsPost)
&nbsp;&nbsp;&nbsp;&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;ls&nbsp;=&nbsp;&quot;insert&nbsp;into&nbsp;&nbsp;joke&nbsp;(title,content,adddate)&nbsp;values&nbsp;(@0,@1,getDate())&quot;;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;db.Execute(ls,&nbsp;title,&nbsp;content);
&nbsp;&nbsp;&nbsp;&nbsp;}
}
&lt;p&gt;笑话标题&lt;/p&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;form&nbsp;method=&quot;post&quot;&nbsp;action=&quot;~/addjoke&quot;&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;label&nbsp;for=&quot;&nbsp;title&quot;&gt;笑话标题：&nbsp;&lt;/label&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;input&nbsp;type=&quot;text&quot;&nbsp;name=&quot;title&quot;&nbsp;value=&quot;&quot;/&gt;
&lt;p&gt;内容&lt;/p&gt;
&lt;label&nbsp;for=&quot;&nbsp;content&quot;&gt;笑话内容：&nbsp;&lt;/label&gt;
&lt;!--&nbsp;加载编辑器的容器&nbsp;21-34行就是负责编辑器的代码--&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;script&nbsp;id=&quot;container&quot;&nbsp;name=&quot;content&quot;&nbsp;type=&quot;text/plain&quot;&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;这里写你的初始化内容
&nbsp;&nbsp;&nbsp;&nbsp;&lt;/script&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;!--&nbsp;配置文件&nbsp;--&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;script&nbsp;type=&quot;text/javascript&quot;&nbsp;charset=&quot;utf-8&quot;&nbsp;src=&quot;ueditor.config.js&quot;&gt;&lt;/script&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;!--&nbsp;编辑器源码文件&nbsp;--&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;script&nbsp;type=&quot;text/javascript&quot;&nbsp;charset=&quot;utf-8&quot;&nbsp;src=&quot;ueditor.all.js&quot;&gt;&lt;/script&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;!--建议手动加载语言，避免在ie下有时因为加载语言失败导致编辑器加载失败--&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文--&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;script&nbsp;type=&quot;text/javascript&quot;&nbsp;charset=&quot;utf-8&quot;&nbsp;src=&quot;lang/zh-cn/zh-cn.js&quot;&gt;&lt;/script&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;!--&nbsp;实例化编辑器&nbsp;--&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;script&nbsp;type=&quot;text/javascript&quot;&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;ue&nbsp;=&nbsp;UE.getEditor(&#39;container&#39;);
&nbsp;&nbsp;&nbsp;&nbsp;&lt;/script&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;input&nbsp;type=&quot;submit&quot;&nbsp;name=&quot;button&quot;&nbsp;value=&quot;提交&quot;&nbsp;/&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/form&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@{
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;Layout&nbsp;=&nbsp;&quot;~/_xuejiLayout.cshtml&quot;;
&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;db&nbsp;=&nbsp;Database.Open(&quot;StarterSite&quot;);
&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;title&nbsp;=&nbsp;Request.Form[&quot;title&quot;];
&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;content&nbsp;=&nbsp;Request.Unvalidated().Form[&quot;content&quot;];
&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(IsPost)
&nbsp;&nbsp;&nbsp;&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;ls&nbsp;=&nbsp;&quot;insert&nbsp;into&nbsp;&nbsp;joke&nbsp;(title,content,adddate)&nbsp;values&nbsp;(@0,@1,getDate())&quot;;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;db.Execute(ls,&nbsp;title,&nbsp;content);
&nbsp;&nbsp;&nbsp;&nbsp;}
}
&lt;p&gt;笑话标题&lt;/p&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;form&nbsp;method=&quot;post&quot;&nbsp;action=&quot;~/addjoke&quot;&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;label&nbsp;for=&quot;&nbsp;title&quot;&gt;笑话标题：&nbsp;&lt;/label&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;input&nbsp;type=&quot;text&quot;&nbsp;name=&quot;title&quot;&nbsp;value=&quot;&quot;/&gt;
&lt;p&gt;内容&lt;/p&gt;
&lt;label&nbsp;for=&quot;&nbsp;content&quot;&gt;笑话内容：&nbsp;&lt;/label&gt;
&lt;!--&nbsp;加载编辑器的容器&nbsp;21-34行就是负责编辑器的代码--&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;script&nbsp;id=&quot;container&quot;&nbsp;name=&quot;content&quot;&nbsp;type=&quot;text/plain&quot;&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;这里写你的初始化内容
&nbsp;&nbsp;&nbsp;&nbsp;&lt;/script&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;!--&nbsp;配置文件&nbsp;--&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;script&nbsp;type=&quot;text/javascript&quot;&nbsp;charset=&quot;utf-8&quot;&nbsp;src=&quot;ueditor.config.js&quot;&gt;&lt;/script&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;!--&nbsp;编辑器源码文件&nbsp;--&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;script&nbsp;type=&quot;text/javascript&quot;&nbsp;charset=&quot;utf-8&quot;&nbsp;src=&quot;ueditor.all.js&quot;&gt;&lt;/script&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;!--建议手动加载语言，避免在ie下有时因为加载语言失败导致编辑器加载失败--&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文--&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;script&nbsp;type=&quot;text/javascript&quot;&nbsp;charset=&quot;utf-8&quot;&nbsp;src=&quot;lang/zh-cn/zh-cn.js&quot;&gt;&lt;/script&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;!--&nbsp;实例化编辑器&nbsp;--&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;script&nbsp;type=&quot;text/javascript&quot;&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;ue&nbsp;=&nbsp;UE.getEditor(&#39;container&#39;);
&nbsp;&nbsp;&nbsp;&nbsp;&lt;/script&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;input&nbsp;type=&quot;submit&quot;&nbsp;name=&quot;button&quot;&nbsp;value=&quot;提交&quot;&nbsp;/&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/form&gt;</pre><p><br/></p>', N'2017-07-14 20:26:18.853')
GO
GO
SET IDENTITY_INSERT [dbo].[joke] OFF
GO

-- ----------------------------
-- Table structure for library_books
-- ----------------------------
DROP TABLE [dbo].[library_books]
GO
CREATE TABLE [dbo].[library_books] (
[id] int NOT NULL IDENTITY(1,1) ,
[name] varchar(255) NULL ,
[isbn] varchar(255) NULL ,
[author] varchar(255) NULL ,
[memo] varchar(255) NULL ,
[amount] varchar(255) NULL ,
[stocks] int NULL ,
[stockdate] datetime NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[library_books]', RESEED, 1003)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'library_books', 
'COLUMN', N'name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'书籍名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'library_books'
, @level2type = 'COLUMN', @level2name = N'name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'书籍名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'library_books'
, @level2type = 'COLUMN', @level2name = N'name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'library_books', 
'COLUMN', N'isbn')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'ISBN号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'library_books'
, @level2type = 'COLUMN', @level2name = N'isbn'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'ISBN号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'library_books'
, @level2type = 'COLUMN', @level2name = N'isbn'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'library_books', 
'COLUMN', N'author')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'作者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'library_books'
, @level2type = 'COLUMN', @level2name = N'author'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'作者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'library_books'
, @level2type = 'COLUMN', @level2name = N'author'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'library_books', 
'COLUMN', N'memo')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'library_books'
, @level2type = 'COLUMN', @level2name = N'memo'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'library_books'
, @level2type = 'COLUMN', @level2name = N'memo'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'library_books', 
'COLUMN', N'amount')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'现有馆存数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'library_books'
, @level2type = 'COLUMN', @level2name = N'amount'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'现有馆存数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'library_books'
, @level2type = 'COLUMN', @level2name = N'amount'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'library_books', 
'COLUMN', N'stocks')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'初始馆存数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'library_books'
, @level2type = 'COLUMN', @level2name = N'stocks'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'初始馆存数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'library_books'
, @level2type = 'COLUMN', @level2name = N'stocks'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'library_books', 
'COLUMN', N'stockdate')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'入馆日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'library_books'
, @level2type = 'COLUMN', @level2name = N'stockdate'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'入馆日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'library_books'
, @level2type = 'COLUMN', @level2name = N'stockdate'
GO

-- ----------------------------
-- Records of library_books
-- ----------------------------
SET IDENTITY_INSERT [dbo].[library_books] ON
GO
INSERT INTO [dbo].[library_books] ([id], [name], [isbn], [author], [memo], [amount], [stocks], [stockdate]) VALUES (N'2', N'那第一本书', N'1111-1111-1111-1111-111', N'王那', N'本书实乃毒鸡汤', N'11', N'11', N'2017-11-20 00:00:00.000')
GO
GO
INSERT INTO [dbo].[library_books] ([id], [name], [isbn], [author], [memo], [amount], [stocks], [stockdate]) VALUES (N'3', N'这第二本书', N'2222-2222-2222-222', N'张这', N'偶们绝不做心灵', N'15', N'15', N'2017-11-20 00:00:00.000')
GO
GO
INSERT INTO [dbo].[library_books] ([id], [name], [isbn], [author], [memo], [amount], [stocks], [stockdate]) VALUES (N'6', N'论：烹饪藕的各种不良方法', N'6666-6666-6666-666', N'哪吒', N'神笔啊，不是马良啊', N'9', N'9', N'2017-11-22 16:13:02.000')
GO
GO
INSERT INTO [dbo].[library_books] ([id], [name], [isbn], [author], [memo], [amount], [stocks], [stockdate]) VALUES (N'7', N'面粉与眯眯眼的恐怖组合', N'7777-7777-7777-7777-777', N'遛弯', N'溜达溜达小鲜肉', N'7', N'7', N'2017-11-22 16:13:53.193')
GO
GO
SET IDENTITY_INSERT [dbo].[library_books] OFF
GO

-- ----------------------------
-- Table structure for library_borrowhistory
-- ----------------------------
DROP TABLE [dbo].[library_borrowhistory]
GO
CREATE TABLE [dbo].[library_borrowhistory] (
[id] int NOT NULL IDENTITY(1,1) ,
[borrowdate] datetime NULL ,
[borrowuser] int NULL ,
[planttoreturn] datetime NULL ,
[returndate] datetime NULL ,
[returnuser] int NULL ,
[memo] varchar(255) NULL ,
[library_collections_id] int NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[library_borrowhistory]', RESEED, 4)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'library_borrowhistory', 
'COLUMN', N'borrowdate')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'借阅日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'library_borrowhistory'
, @level2type = 'COLUMN', @level2name = N'borrowdate'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'借阅日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'library_borrowhistory'
, @level2type = 'COLUMN', @level2name = N'borrowdate'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'library_borrowhistory', 
'COLUMN', N'borrowuser')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'借阅用户id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'library_borrowhistory'
, @level2type = 'COLUMN', @level2name = N'borrowuser'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'借阅用户id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'library_borrowhistory'
, @level2type = 'COLUMN', @level2name = N'borrowuser'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'library_borrowhistory', 
'COLUMN', N'planttoreturn')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'预计归还日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'library_borrowhistory'
, @level2type = 'COLUMN', @level2name = N'planttoreturn'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'预计归还日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'library_borrowhistory'
, @level2type = 'COLUMN', @level2name = N'planttoreturn'
GO

-- ----------------------------
-- Records of library_borrowhistory
-- ----------------------------
SET IDENTITY_INSERT [dbo].[library_borrowhistory] ON
GO
INSERT INTO [dbo].[library_borrowhistory] ([id], [borrowdate], [borrowuser], [planttoreturn], [returndate], [returnuser], [memo], [library_collections_id]) VALUES (N'1', N'2017-11-22 13:30:06.263', N'1', N'2017-11-29 13:30:06.263', N'2017-11-23 09:05:59.770', N'1', N'memo', N'3')
GO
GO
INSERT INTO [dbo].[library_borrowhistory] ([id], [borrowdate], [borrowuser], [planttoreturn], [returndate], [returnuser], [memo], [library_collections_id]) VALUES (N'2', N'2017-11-24 16:18:36.680', N'1', N'2017-12-01 16:18:36.680', N'2017-11-24 16:18:55.063', N'1', N'memo', N'1')
GO
GO
INSERT INTO [dbo].[library_borrowhistory] ([id], [borrowdate], [borrowuser], [planttoreturn], [returndate], [returnuser], [memo], [library_collections_id]) VALUES (N'3', N'2017-11-24 16:18:43.080', N'1', N'2017-12-01 16:18:43.080', N'2017-11-24 16:18:59.733', N'1', N'memo', N'2')
GO
GO
INSERT INTO [dbo].[library_borrowhistory] ([id], [borrowdate], [borrowuser], [planttoreturn], [returndate], [returnuser], [memo], [library_collections_id]) VALUES (N'4', N'2017-11-22 16:17:54.907', N'1', N'2017-11-29 16:17:54.907', N'2017-11-25 18:23:34.367', N'1', N'memo', N'27')
GO
GO
SET IDENTITY_INSERT [dbo].[library_borrowhistory] OFF
GO

-- ----------------------------
-- Table structure for library_borrowing
-- ----------------------------
DROP TABLE [dbo].[library_borrowing]
GO
CREATE TABLE [dbo].[library_borrowing] (
[id] int NOT NULL IDENTITY(1,1) ,
[borrowdate] datetime NULL ,
[borrowuser] int NULL ,
[planttoreturn] datetime NULL ,
[library_collections_id] int NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[library_borrowing]', RESEED, 1005)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'library_borrowing', 
'COLUMN', N'borrowdate')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'借阅日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'library_borrowing'
, @level2type = 'COLUMN', @level2name = N'borrowdate'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'借阅日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'library_borrowing'
, @level2type = 'COLUMN', @level2name = N'borrowdate'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'library_borrowing', 
'COLUMN', N'borrowuser')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'借阅用户id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'library_borrowing'
, @level2type = 'COLUMN', @level2name = N'borrowuser'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'借阅用户id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'library_borrowing'
, @level2type = 'COLUMN', @level2name = N'borrowuser'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'library_borrowing', 
'COLUMN', N'planttoreturn')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'预计归还日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'library_borrowing'
, @level2type = 'COLUMN', @level2name = N'planttoreturn'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'预计归还日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'library_borrowing'
, @level2type = 'COLUMN', @level2name = N'planttoreturn'
GO

-- ----------------------------
-- Records of library_borrowing
-- ----------------------------
SET IDENTITY_INSERT [dbo].[library_borrowing] ON
GO
INSERT INTO [dbo].[library_borrowing] ([id], [borrowdate], [borrowuser], [planttoreturn], [library_collections_id]) VALUES (N'3', N'2017-11-22 14:53:17.700', N'1', N'2017-11-29 14:53:17.700', N'4')
GO
GO
INSERT INTO [dbo].[library_borrowing] ([id], [borrowdate], [borrowuser], [planttoreturn], [library_collections_id]) VALUES (N'4', N'2017-11-22 15:12:35.510', N'1', N'2017-11-29 15:12:35.510', N'5')
GO
GO
INSERT INTO [dbo].[library_borrowing] ([id], [borrowdate], [borrowuser], [planttoreturn], [library_collections_id]) VALUES (N'5', N'2017-11-22 15:33:16.633', N'1', N'2017-11-29 15:33:16.633', N'12')
GO
GO
INSERT INTO [dbo].[library_borrowing] ([id], [borrowdate], [borrowuser], [planttoreturn], [library_collections_id]) VALUES (N'7', N'2017-11-22 16:18:01.477', N'1', N'2017-11-29 16:18:01.477', N'36')
GO
GO
INSERT INTO [dbo].[library_borrowing] ([id], [borrowdate], [borrowuser], [planttoreturn], [library_collections_id]) VALUES (N'8', N'2017-11-22 16:18:08.497', N'1', N'2017-11-29 16:18:08.497', N'37')
GO
GO
INSERT INTO [dbo].[library_borrowing] ([id], [borrowdate], [borrowuser], [planttoreturn], [library_collections_id]) VALUES (N'1002', N'2017-11-24 13:16:44.060', N'1', N'2017-12-01 13:16:44.060', N'28')
GO
GO
INSERT INTO [dbo].[library_borrowing] ([id], [borrowdate], [borrowuser], [planttoreturn], [library_collections_id]) VALUES (N'1005', N'2017-11-24 16:18:48.043', N'1', N'2017-12-01 16:18:48.043', N'3')
GO
GO
SET IDENTITY_INSERT [dbo].[library_borrowing] OFF
GO

-- ----------------------------
-- Table structure for library_collections
-- ----------------------------
DROP TABLE [dbo].[library_collections]
GO
CREATE TABLE [dbo].[library_collections] (
[id] int NOT NULL IDENTITY(1,1) ,
[library_books_id] int NULL ,
[status] int NULL DEFAULT ((1)) ,
[stockdate] date NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[library_collections]', RESEED, 1026)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'library_collections', 
'COLUMN', N'status')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'状态'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'library_collections'
, @level2type = 'COLUMN', @level2name = N'status'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'状态'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'library_collections'
, @level2type = 'COLUMN', @level2name = N'status'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'library_collections', 
'COLUMN', N'stockdate')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'入馆日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'library_collections'
, @level2type = 'COLUMN', @level2name = N'stockdate'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'入馆日期'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'library_collections'
, @level2type = 'COLUMN', @level2name = N'stockdate'
GO

-- ----------------------------
-- Records of library_collections
-- ----------------------------
SET IDENTITY_INSERT [dbo].[library_collections] ON
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'1', N'2', N'1', N'2017-11-20')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'2', N'2', N'1', N'2017-11-20')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'3', N'2', N'2', N'2017-11-20')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'4', N'2', N'2', N'2017-11-20')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'5', N'2', N'2', N'2017-11-20')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'6', N'2', N'1', N'2017-11-20')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'7', N'2', N'1', N'2017-11-20')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'8', N'2', N'1', N'2017-11-20')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'9', N'2', N'1', N'2017-11-20')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'10', N'2', N'1', N'2017-11-20')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'11', N'2', N'1', N'2017-11-20')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'12', N'3', N'2', N'2017-11-20')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'13', N'3', N'1', N'2017-11-20')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'14', N'3', N'1', N'2017-11-20')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'15', N'3', N'1', N'2017-11-20')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'16', N'3', N'1', N'2017-11-20')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'17', N'3', N'1', N'2017-11-20')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'18', N'3', N'1', N'2017-11-20')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'19', N'3', N'1', N'2017-11-20')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'20', N'3', N'1', N'2017-11-20')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'21', N'3', N'1', N'2017-11-20')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'22', N'3', N'1', N'2017-11-20')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'23', N'3', N'1', N'2017-11-20')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'24', N'3', N'1', N'2017-11-20')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'25', N'3', N'1', N'2017-11-20')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'26', N'3', N'1', N'2017-11-20')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'27', N'6', N'1', N'2017-11-22')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'28', N'6', N'2', N'2017-11-22')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'29', N'6', N'1', N'2017-11-22')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'30', N'6', N'1', N'2017-11-22')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'31', N'6', N'1', N'2017-11-22')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'32', N'6', N'1', N'2017-11-22')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'33', N'6', N'1', N'2017-11-22')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'34', N'6', N'1', N'2017-11-22')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'35', N'6', N'1', N'2017-11-22')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'36', N'7', N'2', N'2017-11-22')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'37', N'7', N'2', N'2017-11-22')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'38', N'7', N'1', N'2017-11-22')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'39', N'7', N'1', N'2017-11-22')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'40', N'7', N'1', N'2017-11-22')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'41', N'7', N'1', N'2017-11-22')
GO
GO
INSERT INTO [dbo].[library_collections] ([id], [library_books_id], [status], [stockdate]) VALUES (N'42', N'7', N'1', N'2017-11-22')
GO
GO
SET IDENTITY_INSERT [dbo].[library_collections] OFF
GO

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE [dbo].[log]
GO
CREATE TABLE [dbo].[log] (
[Id] int NOT NULL IDENTITY(38,1) ,
[who] nvarchar(10) NOT NULL ,
[whichtable] nvarchar(20) NOT NULL ,
[actiontype] nvarchar(10) NOT NULL ,
[withwhat] nvarchar(200) NOT NULL ,
[whendoes] datetime NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[log]', RESEED, 39)
GO

-- ----------------------------
-- Records of log
-- ----------------------------
SET IDENTITY_INSERT [dbo].[log] ON
GO
INSERT INTO [dbo].[log] ([Id], [who], [whichtable], [actiontype], [withwhat], [whendoes]) VALUES (N'6', N'1', N'students', N'insert', N'snum=170101003,sname=苏子豪,ssex=男,sage=1,sphone=1,qq=1,wx=1,sstatus=1,cid=1', N'2017-05-29 17:39:01.433')
GO
GO
INSERT INTO [dbo].[log] ([Id], [who], [whichtable], [actiontype], [withwhat], [whendoes]) VALUES (N'7', N'1', N'students', N'insert', N'snum=123123123,sname=123123,ssex=男,sage=11,sphone=1,qq=1,wx=1,sstatus=1,cid=1', N'2017-05-29 17:42:22.853')
GO
GO
INSERT INTO [dbo].[log] ([Id], [who], [whichtable], [actiontype], [withwhat], [whendoes]) VALUES (N'8', N'1', N'students', N'insert', N'sid=6snum=170102001,sname=耿思瑶,ssex=女,sage=21,sphone=12,qq=187333,wx=6666222q11,sstatus=1,cid=2', N'2017-05-29 17:46:21.173')
GO
GO
INSERT INTO [dbo].[log] ([Id], [who], [whichtable], [actiontype], [withwhat], [whendoes]) VALUES (N'9', N'1', N'students', N'insert', N'sid=6snum=170102001,sname=耿思瑶,ssex=女,sage=21,sphone=12,qq=187333,wx=6666222q11,sstatus=1,cid=2', N'2017-05-29 17:46:26.783')
GO
GO
INSERT INTO [dbo].[log] ([Id], [who], [whichtable], [actiontype], [withwhat], [whendoes]) VALUES (N'10', N'1', N'students', N'delete', N'sid=37,snum=123123123,sname=苏子豪,ssex=1,sage=19,sphone=1,qq=111,wx=1,sstatus=1,cid=1', N'2017-05-29 22:02:49.087')
GO
GO
INSERT INTO [dbo].[log] ([Id], [who], [whichtable], [actiontype], [withwhat], [whendoes]) VALUES (N'11', N'1', N'students', N'update', N'sid=47,snum=123123123,sname=郭东来,ssex=男,sage=19,sphone=1,qq=111,wx=1,sstatus=1,cid=6', N'2017-05-29 23:17:14.513')
GO
GO
INSERT INTO [dbo].[log] ([Id], [who], [whichtable], [actiontype], [withwhat], [whendoes]) VALUES (N'12', N'1', N'students', N'update', N'sid=48,snum=123123123,sname=陈籽霖,ssex=男,sage=19,sphone=1,qq=111,wx=1,sstatus=1,cid=6', N'2017-05-29 23:17:47.427')
GO
GO
INSERT INTO [dbo].[log] ([Id], [who], [whichtable], [actiontype], [withwhat], [whendoes]) VALUES (N'13', N'1', N'students', N'update', N'sid=49,snum=123123123,sname=任鹏,ssex=男,sage=19,sphone=1,qq=111,wx=1,sstatus=1,cid=6', N'2017-05-29 23:17:53.430')
GO
GO
INSERT INTO [dbo].[log] ([Id], [who], [whichtable], [actiontype], [withwhat], [whendoes]) VALUES (N'14', N'1', N'students', N'update', N'sid=50,snum=123123123,sname=刘仲胜,ssex=男,sage=19,sphone=1,qq=111,wx=1,sstatus=1,cid=6', N'2017-05-29 23:17:57.843')
GO
GO
INSERT INTO [dbo].[log] ([Id], [who], [whichtable], [actiontype], [withwhat], [whendoes]) VALUES (N'15', N'1', N'students', N'update', N'sid=51,snum=123123123,sname=刘思奇,ssex=女,sage=19,sphone=1,qq=111,wx=1,sstatus=1,cid=6', N'2017-05-29 23:18:02.570')
GO
GO
INSERT INTO [dbo].[log] ([Id], [who], [whichtable], [actiontype], [withwhat], [whendoes]) VALUES (N'16', N'1', N'students', N'update', N'sid=52,snum=123123123,sname=杨金月,ssex=女,sage=19,sphone=1,qq=111,wx=1,sstatus=1,cid=6', N'2017-05-29 23:18:07.530')
GO
GO
INSERT INTO [dbo].[log] ([Id], [who], [whichtable], [actiontype], [withwhat], [whendoes]) VALUES (N'17', N'1', N'students', N'update', N'sid=53,snum=123123123,sname=李浩博,ssex=男,sage=19,sphone=1,qq=111,wx=1,sstatus=1,cid=6', N'2017-05-29 23:18:13.923')
GO
GO
INSERT INTO [dbo].[log] ([Id], [who], [whichtable], [actiontype], [withwhat], [whendoes]) VALUES (N'18', N'1', N'students', N'update', N'sid=54,snum=123123123,sname=姚阳,ssex=男,sage=19,sphone=1,qq=111,wx=1,sstatus=1,cid=6', N'2017-05-29 23:18:18.373')
GO
GO
INSERT INTO [dbo].[log] ([Id], [who], [whichtable], [actiontype], [withwhat], [whendoes]) VALUES (N'19', N'1', N'students', N'update', N'sid=55,snum=123123123,sname=张雷,ssex=男,sage=19,sphone=1,qq=111,wx=1,sstatus=1,cid=6', N'2017-05-29 23:18:23.347')
GO
GO
INSERT INTO [dbo].[log] ([Id], [who], [whichtable], [actiontype], [withwhat], [whendoes]) VALUES (N'20', N'1', N'students', N'update', N'sid=56,snum=123123123,sname=朱浩,ssex=男,sage=19,sphone=1,qq=111,wx=1,sstatus=1,cid=6', N'2017-05-29 23:18:27.453')
GO
GO
INSERT INTO [dbo].[log] ([Id], [who], [whichtable], [actiontype], [withwhat], [whendoes]) VALUES (N'21', N'1', N'students', N'update', N'sid=57,snum=123123123,sname=王希智,ssex=男,sage=19,sphone=1,qq=111,wx=1,sstatus=1,cid=6', N'2017-05-29 23:18:36.627')
GO
GO
INSERT INTO [dbo].[log] ([Id], [who], [whichtable], [actiontype], [withwhat], [whendoes]) VALUES (N'22', N'1', N'students', N'update', N'sid=58,snum=123123123,sname=白宇轩,ssex=男,sage=19,sphone=1,qq=111,wx=1,sstatus=1,cid=6', N'2017-05-29 23:19:04.117')
GO
GO
INSERT INTO [dbo].[log] ([Id], [who], [whichtable], [actiontype], [withwhat], [whendoes]) VALUES (N'23', N'1', N'students', N'update', N'sid=59,snum=123123123,sname=蓝硕,ssex=男,sage=19,sphone=1,qq=111,wx=1,sstatus=1,cid=6', N'2017-05-29 23:19:08.867')
GO
GO
INSERT INTO [dbo].[log] ([Id], [who], [whichtable], [actiontype], [withwhat], [whendoes]) VALUES (N'24', N'1', N'students', N'update', N'sid=59,snum=123123123,sname=蓝硕,ssex=男,sage=19,sphone=1,qq=111,wx=1,sstatus=3,cid=6', N'2017-05-29 23:19:21.867')
GO
GO
INSERT INTO [dbo].[log] ([Id], [who], [whichtable], [actiontype], [withwhat], [whendoes]) VALUES (N'25', N'1', N'students', N'update', N'sid=60,snum=123123123,sname=康源浩,ssex=男,sage=19,sphone=1,qq=111,wx=1,sstatus=1,cid=6', N'2017-05-29 23:19:30.077')
GO
GO
INSERT INTO [dbo].[log] ([Id], [who], [whichtable], [actiontype], [withwhat], [whendoes]) VALUES (N'26', N'1', N'students', N'update', N'sid=61,snum=123123123,sname=张云鹤,ssex=男,sage=19,sphone=1,qq=111,wx=1,sstatus=1,cid=6', N'2017-05-29 23:19:33.730')
GO
GO
INSERT INTO [dbo].[log] ([Id], [who], [whichtable], [actiontype], [withwhat], [whendoes]) VALUES (N'27', N'1', N'students', N'update', N'sid=62,snum=123123123,sname=王浩楠,ssex=男,sage=19,sphone=1,qq=111,wx=1,sstatus=1,cid=6', N'2017-05-29 23:19:38.150')
GO
GO
INSERT INTO [dbo].[log] ([Id], [who], [whichtable], [actiontype], [withwhat], [whendoes]) VALUES (N'28', N'1', N'students', N'update', N'sid=63,snum=123123123,sname=毛晟宇,ssex=男,sage=19,sphone=1,qq=111,wx=1,sstatus=1,cid=6', N'2017-05-29 23:19:42.490')
GO
GO
INSERT INTO [dbo].[log] ([Id], [who], [whichtable], [actiontype], [withwhat], [whendoes]) VALUES (N'29', N'1', N'students', N'update', N'sid=64,snum=123123123,sname=聂源良,ssex=男,sage=19,sphone=1,qq=111,wx=1,sstatus=1,cid=6', N'2017-05-29 23:19:46.357')
GO
GO
INSERT INTO [dbo].[log] ([Id], [who], [whichtable], [actiontype], [withwhat], [whendoes]) VALUES (N'30', N'1', N'students', N'update', N'sid=65,snum=123123123,sname=蔡演秋,ssex=男,sage=19,sphone=1,qq=111,wx=1,sstatus=1,cid=6', N'2017-05-29 23:19:51.407')
GO
GO
INSERT INTO [dbo].[log] ([Id], [who], [whichtable], [actiontype], [withwhat], [whendoes]) VALUES (N'31', N'1', N'students', N'update', N'sid=66,snum=123123123,sname=叶信麟,ssex=男,sage=19,sphone=1,qq=111,wx=1,sstatus=1,cid=6', N'2017-05-29 23:19:54.417')
GO
GO
INSERT INTO [dbo].[log] ([Id], [who], [whichtable], [actiontype], [withwhat], [whendoes]) VALUES (N'32', N'1', N'students', N'update', N'sid=67,snum=123123123,sname=方铭坚,ssex=男,sage=19,sphone=1,qq=111,wx=1,sstatus=1,cid=6', N'2017-05-29 23:19:58.070')
GO
GO
INSERT INTO [dbo].[log] ([Id], [who], [whichtable], [actiontype], [withwhat], [whendoes]) VALUES (N'33', N'1', N'students', N'update', N'sid=10,snum=123123123,sname=佟鑫荣,ssex=男,sage=19,sphone=1,qq=111,wx=1,sstatus=1,cid=1', N'2017-05-30 01:18:42.380')
GO
GO
INSERT INTO [dbo].[log] ([Id], [who], [whichtable], [actiontype], [withwhat], [whendoes]) VALUES (N'34', N'1', N'students', N'update', N'sid=11,snum=123123123,sname=盛任,ssex=男,sage=19,sphone=1,qq=111,wx=1,sstatus=1,cid=1', N'2017-05-30 09:58:17.343')
GO
GO
INSERT INTO [dbo].[log] ([Id], [who], [whichtable], [actiontype], [withwhat], [whendoes]) VALUES (N'35', N'1', N'students', N'update', N'sid=49,snum=123123123,sname=任鹏,ssex=女,sage=19,sphone=1,qq=111,wx=1,sstatus=1,cid=8', N'2017-05-31 15:45:29.277')
GO
GO
INSERT INTO [dbo].[log] ([Id], [who], [whichtable], [actiontype], [withwhat], [whendoes]) VALUES (N'36', N'1', N'students', N'update', N'sid=49,snum=123123123,sname=任大屌,ssex=男,sage=19,sphone=1,qq=111,wx=1,sstatus=1,cid=6', N'2017-05-31 15:45:56.967')
GO
GO
INSERT INTO [dbo].[log] ([Id], [who], [whichtable], [actiontype], [withwhat], [whendoes]) VALUES (N'37', N'1', N'students', N'update', N'sid=49,snum=123123123,sname=任鹏,ssex=男,sage=19,sphone=1,qq=111,wx=1,sstatus=1,cid=6', N'2017-05-31 15:46:06.917')
GO
GO
INSERT INTO [dbo].[log] ([Id], [who], [whichtable], [actiontype], [withwhat], [whendoes]) VALUES (N'38', N'1', N'students', N'update', N'id=2,students_number=170101001,students_name=江崟才,students_sex=男,students_age=18,students_phone=11111111111,qq=35345,wx=tyuiyu,students_status=1,classes_id=1', N'2017-11-27 20:39:30.360')
GO
GO
INSERT INTO [dbo].[log] ([Id], [who], [whichtable], [actiontype], [withwhat], [whendoes]) VALUES (N'39', N'1', N'students', N'insert', N'students_number=121212212,students_name=陈龙昊,students_sex=男,students_age=17,students_phone=171717,qq=171717,wx=171717,students_status=1,classes_id=2', N'2017-11-27 20:42:18.167')
GO
GO
SET IDENTITY_INSERT [dbo].[log] OFF
GO

-- ----------------------------
-- Table structure for majors
-- ----------------------------
DROP TABLE [dbo].[majors]
GO
CREATE TABLE [dbo].[majors] (
[id] int NOT NULL IDENTITY(13,1) ,
[majors_name] nvarchar(50) NOT NULL 
)


GO

-- ----------------------------
-- Records of majors
-- ----------------------------
SET IDENTITY_INSERT [dbo].[majors] ON
GO
INSERT INTO [dbo].[majors] ([id], [majors_name]) VALUES (N'1', N'计算机软件开发')
GO
GO
INSERT INTO [dbo].[majors] ([id], [majors_name]) VALUES (N'2', N'计算机UI设计')
GO
GO
INSERT INTO [dbo].[majors] ([id], [majors_name]) VALUES (N'4', N'3+4升学班计算机')
GO
GO
INSERT INTO [dbo].[majors] ([id], [majors_name]) VALUES (N'5', N'3+4升学班机械')
GO
GO
INSERT INTO [dbo].[majors] ([id], [majors_name]) VALUES (N'6', N'3+4升学班会计')
GO
GO
INSERT INTO [dbo].[majors] ([id], [majors_name]) VALUES (N'7', N'3+4升学班市场营销')
GO
GO
INSERT INTO [dbo].[majors] ([id], [majors_name]) VALUES (N'8', N'机械加工与设计')
GO
GO
INSERT INTO [dbo].[majors] ([id], [majors_name]) VALUES (N'9', N'会计')
GO
GO
INSERT INTO [dbo].[majors] ([id], [majors_name]) VALUES (N'10', N'装潢')
GO
GO
INSERT INTO [dbo].[majors] ([id], [majors_name]) VALUES (N'11', N'营销')
GO
GO
INSERT INTO [dbo].[majors] ([id], [majors_name]) VALUES (N'12', N'互联网商务')
GO
GO
SET IDENTITY_INSERT [dbo].[majors] OFF
GO

-- ----------------------------
-- Table structure for mycart
-- ----------------------------
DROP TABLE [dbo].[mycart]
GO
CREATE TABLE [dbo].[mycart] (
[cartid] int NOT NULL IDENTITY(1,1) ,
[students_id] int NULL ,
[orderid] nvarchar(254) NULL ,
[pcount] int NULL ,
[price] int NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[mycart]', RESEED, 40)
GO

-- ----------------------------
-- Records of mycart
-- ----------------------------
SET IDENTITY_INSERT [dbo].[mycart] ON
GO
INSERT INTO [dbo].[mycart] ([cartid], [students_id], [orderid], [pcount], [price]) VALUES (N'7', N'2', N'201783112329AAJZ', N'11', N'18')
GO
GO
INSERT INTO [dbo].[mycart] ([cartid], [students_id], [orderid], [pcount], [price]) VALUES (N'8', N'6', N'201783112329AAJZ', N'2', N'21')
GO
GO
INSERT INTO [dbo].[mycart] ([cartid], [students_id], [orderid], [pcount], [price]) VALUES (N'11', N'2', N'201783125202AAJZ', N'1', N'18')
GO
GO
INSERT INTO [dbo].[mycart] ([cartid], [students_id], [orderid], [pcount], [price]) VALUES (N'12', N'6', N'201783125202AAJZ', N'1', N'21')
GO
GO
INSERT INTO [dbo].[mycart] ([cartid], [students_id], [orderid], [pcount], [price]) VALUES (N'13', N'7', N'201783125202AAJZ', N'1', N'20')
GO
GO
INSERT INTO [dbo].[mycart] ([cartid], [students_id], [orderid], [pcount], [price]) VALUES (N'14', N'8', N'201783125202AAJZ', N'1', N'1')
GO
GO
INSERT INTO [dbo].[mycart] ([cartid], [students_id], [orderid], [pcount], [price]) VALUES (N'15', N'2', N'201783214050AAJZ', N'2', N'18')
GO
GO
INSERT INTO [dbo].[mycart] ([cartid], [students_id], [orderid], [pcount], [price]) VALUES (N'16', N'6', N'201783214050AAJZ', N'2', N'21')
GO
GO
INSERT INTO [dbo].[mycart] ([cartid], [students_id], [orderid], [pcount], [price]) VALUES (N'17', N'7', N'201783214050AAJZ', N'2', N'20')
GO
GO
INSERT INTO [dbo].[mycart] ([cartid], [students_id], [orderid], [pcount], [price]) VALUES (N'18', N'8', N'201783214050AAJZ', N'2', N'1')
GO
GO
INSERT INTO [dbo].[mycart] ([cartid], [students_id], [orderid], [pcount], [price]) VALUES (N'19', N'11', N'201783214050AAJZ', N'2', N'19')
GO
GO
INSERT INTO [dbo].[mycart] ([cartid], [students_id], [orderid], [pcount], [price]) VALUES (N'20', N'2', N'201783232337AAJZ', N'5', N'18')
GO
GO
INSERT INTO [dbo].[mycart] ([cartid], [students_id], [orderid], [pcount], [price]) VALUES (N'21', N'6', N'201783232337AAJZ', N'1', N'21')
GO
GO
INSERT INTO [dbo].[mycart] ([cartid], [students_id], [orderid], [pcount], [price]) VALUES (N'22', N'7', N'201783232337AAJZ', N'1', N'20')
GO
GO
INSERT INTO [dbo].[mycart] ([cartid], [students_id], [orderid], [pcount], [price]) VALUES (N'23', N'2', N'201784112500AAJZ', N'1', N'18')
GO
GO
INSERT INTO [dbo].[mycart] ([cartid], [students_id], [orderid], [pcount], [price]) VALUES (N'24', N'2', N'201784220016AAJZ', N'2', N'18')
GO
GO
INSERT INTO [dbo].[mycart] ([cartid], [students_id], [orderid], [pcount], [price]) VALUES (N'25', N'6', N'201784220016AAJZ', N'2', N'21')
GO
GO
INSERT INTO [dbo].[mycart] ([cartid], [students_id], [orderid], [pcount], [price]) VALUES (N'26', N'7', N'201784220016AAJZ', N'2', N'20')
GO
GO
INSERT INTO [dbo].[mycart] ([cartid], [students_id], [orderid], [pcount], [price]) VALUES (N'27', N'2', N'20178503056AAJZ', N'1', N'18')
GO
GO
INSERT INTO [dbo].[mycart] ([cartid], [students_id], [orderid], [pcount], [price]) VALUES (N'28', N'6', N'20178503056AAJZ', N'1', N'21')
GO
GO
INSERT INTO [dbo].[mycart] ([cartid], [students_id], [orderid], [pcount], [price]) VALUES (N'29', N'8', N'20178503056AAJZ', N'1', N'1')
GO
GO
INSERT INTO [dbo].[mycart] ([cartid], [students_id], [orderid], [pcount], [price]) VALUES (N'30', N'15', N'20178503056AAJZ', N'1', N'19')
GO
GO
INSERT INTO [dbo].[mycart] ([cartid], [students_id], [orderid], [pcount], [price]) VALUES (N'31', N'14', N'201785105721AAJZ', N'1', N'19')
GO
GO
INSERT INTO [dbo].[mycart] ([cartid], [students_id], [orderid], [pcount], [price]) VALUES (N'32', N'17', N'201785105721AAJZ', N'1', N'19')
GO
GO
INSERT INTO [dbo].[mycart] ([cartid], [students_id], [orderid], [pcount], [price]) VALUES (N'33', N'6', N'201785122803AAJZ', N'1', N'21')
GO
GO
INSERT INTO [dbo].[mycart] ([cartid], [students_id], [orderid], [pcount], [price]) VALUES (N'34', N'8', N'201785122803AAJZ', N'1', N'1')
GO
GO
INSERT INTO [dbo].[mycart] ([cartid], [students_id], [orderid], [pcount], [price]) VALUES (N'35', N'12', N'201785122803AAJZ', N'1', N'19')
GO
GO
INSERT INTO [dbo].[mycart] ([cartid], [students_id], [orderid], [pcount], [price]) VALUES (N'36', N'2', N'201791391054AAJZ', N'3', N'18')
GO
GO
INSERT INTO [dbo].[mycart] ([cartid], [students_id], [orderid], [pcount], [price]) VALUES (N'37', N'7', N'201791391054AAJZ', N'3', N'20')
GO
GO
INSERT INTO [dbo].[mycart] ([cartid], [students_id], [orderid], [pcount], [price]) VALUES (N'38', N'2', null, N'1', N'18')
GO
GO
INSERT INTO [dbo].[mycart] ([cartid], [students_id], [orderid], [pcount], [price]) VALUES (N'39', N'2', N'20171025171549AAJZ', N'3', N'18')
GO
GO
INSERT INTO [dbo].[mycart] ([cartid], [students_id], [orderid], [pcount], [price]) VALUES (N'40', N'6', N'20171025171549AAJZ', N'2', N'21')
GO
GO
SET IDENTITY_INSERT [dbo].[mycart] OFF
GO

-- ----------------------------
-- Table structure for scores
-- ----------------------------
DROP TABLE [dbo].[scores]
GO
CREATE TABLE [dbo].[scores] (
[id] int NOT NULL IDENTITY(4,1) ,
[exams_id] int NOT NULL ,
[scores_value] int NOT NULL ,
[courses_id] int NOT NULL ,
[students_id] int NOT NULL 
)


GO

-- ----------------------------
-- Records of scores
-- ----------------------------
SET IDENTITY_INSERT [dbo].[scores] ON
GO
INSERT INTO [dbo].[scores] ([id], [exams_id], [scores_value], [courses_id], [students_id]) VALUES (N'2', N'4', N'80', N'3', N'6')
GO
GO
INSERT INTO [dbo].[scores] ([id], [exams_id], [scores_value], [courses_id], [students_id]) VALUES (N'3', N'4', N'90', N'3', N'2')
GO
GO
SET IDENTITY_INSERT [dbo].[scores] OFF
GO

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE [dbo].[students]
GO
CREATE TABLE [dbo].[students] (
[id] int NOT NULL IDENTITY(68,1) ,
[students_number] nvarchar(10) NOT NULL ,
[students_name] nvarchar(8) NOT NULL ,
[students_sex] nvarchar(2) NOT NULL ,
[students_age] int NOT NULL ,
[students_phone] nvarchar(12) NOT NULL ,
[qq] int NOT NULL ,
[wx] nvarchar(20) NOT NULL ,
[students_status] int NOT NULL ,
[classes_id] int NOT NULL 
)


GO

-- ----------------------------
-- Records of students
-- ----------------------------
SET IDENTITY_INSERT [dbo].[students] ON
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'2', N'170101001', N'江崟才', N'男', N'18', N'11111111111', N'35345', N'tyuiyu', N'1', N'1')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'6', N'170102001', N'耿思瑶', N'女', N'21', N'22222222222', N'187333', N'6666222q11', N'1', N'2')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'7', N'170101002', N'刘婉玥', N'女', N'20', N'33333333333', N'1212', N'1212', N'1', N'1')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'8', N'170101003', N'苏子豪', N'男', N'1', N'1', N'1', N'1', N'1', N'1')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'10', N'123123123', N'佟鑫荣', N'男', N'19', N'1', N'111', N'1', N'1', N'1')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'11', N'123123123', N'盛任', N'男', N'19', N'1', N'111', N'1', N'1', N'1')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'12', N'123123123', N'刘佳彬', N'男', N'19', N'1', N'111', N'1', N'1', N'1')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'14', N'123123123', N'孟震', N'男', N'19', N'1', N'111', N'1', N'1', N'1')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'15', N'123123123', N'张齐', N'男', N'19', N'1', N'111', N'1', N'1', N'1')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'16', N'123123123', N'刘涛', N'男', N'19', N'1', N'111', N'1', N'1', N'1')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'17', N'123123123', N'刘阔', N'男', N'19', N'1', N'111', N'1', N'1', N'1')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'18', N'123123123', N'王英吉', N'男', N'19', N'1', N'111', N'1', N'1', N'1')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'19', N'123123123', N'谢驰', N'男', N'19', N'1', N'111', N'1', N'1', N'1')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'20', N'123123123', N'张照坤', N'男', N'19', N'1', N'111', N'1', N'1', N'1')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'21', N'123123123', N'孙明新', N'男', N'19', N'1', N'111', N'1', N'1', N'1')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'22', N'123123123', N'陈际宇', N'男', N'19', N'1', N'111', N'1', N'1', N'1')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'23', N'123123123', N'董权德', N'男', N'19', N'1', N'111', N'1', N'1', N'1')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'24', N'123123123', N'张贺', N'男', N'19', N'1', N'111', N'1', N'1', N'1')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'25', N'123123123', N'赵琦琳', N'男', N'19', N'1', N'111', N'1', N'1', N'1')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'26', N'123123123', N'刘博', N'男', N'19', N'1', N'111', N'1', N'1', N'1')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'27', N'123123123', N'马志远', N'男', N'19', N'1', N'111', N'1', N'1', N'1')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'28', N'123123123', N'崔翔', N'男', N'19', N'1', N'111', N'1', N'1', N'1')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'29', N'123123123', N'赵薪荐', N'男', N'19', N'1', N'111', N'1', N'1', N'1')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'30', N'123123123', N'邹海洋', N'男', N'19', N'1', N'111', N'1', N'1', N'1')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'31', N'123123123', N'王方正', N'男', N'19', N'1', N'111', N'1', N'1', N'1')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'32', N'123123123', N'徐明远', N'男', N'19', N'1', N'111', N'1', N'1', N'1')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'33', N'123123123', N'孙圣然', N'男', N'19', N'1', N'111', N'1', N'1', N'1')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'35', N'123123123', N'蔡达彬', N'男', N'19', N'1', N'111', N'1', N'1', N'1')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'36', N'123123123', N'杨珺博', N'男', N'19', N'1', N'111', N'1', N'1', N'1')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'38', N'123123123', N'徐晓东', N'女', N'19', N'1', N'111', N'1', N'1', N'1')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'39', N'123123123', N'王帅', N'男', N'19', N'1', N'111', N'1', N'1', N'1')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'40', N'123123123', N'吴德斌', N'男', N'19', N'1', N'111', N'1', N'1', N'1')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'41', N'123123123', N'关超', N'男', N'19', N'1', N'111', N'1', N'1', N'1')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'42', N'123123123', N'刘帅林', N'男', N'19', N'1', N'111', N'1', N'1', N'1')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'43', N'123123123', N'伊思宇', N'男', N'19', N'1', N'111', N'1', N'1', N'1')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'44', N'123123123', N'陈叙达', N'男', N'19', N'1', N'111', N'1', N'1', N'1')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'45', N'123123123', N'王陈旭', N'男', N'19', N'1', N'111', N'1', N'1', N'1')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'46', N'123123123', N'金智勋', N'男', N'19', N'1', N'111', N'1', N'1', N'1')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'47', N'123123123', N'郭东来', N'男', N'19', N'1', N'111', N'1', N'1', N'6')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'48', N'123123123', N'陈籽霖', N'男', N'19', N'1', N'111', N'1', N'1', N'6')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'49', N'123123123', N'任鹏', N'男', N'19', N'1', N'111', N'1', N'1', N'6')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'50', N'123123123', N'刘仲胜', N'男', N'19', N'1', N'111', N'1', N'1', N'6')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'51', N'123123123', N'刘思奇', N'女', N'19', N'1', N'111', N'1', N'1', N'6')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'52', N'123123123', N'杨金月', N'女', N'19', N'1', N'111', N'1', N'1', N'6')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'53', N'123123123', N'李浩博', N'男', N'19', N'1', N'111', N'1', N'1', N'6')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'54', N'123123123', N'姚阳', N'男', N'19', N'1', N'111', N'1', N'1', N'6')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'55', N'123123123', N'张雷', N'男', N'19', N'1', N'111', N'1', N'1', N'6')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'56', N'123123123', N'朱浩', N'男', N'19', N'1', N'111', N'1', N'1', N'6')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'57', N'123123123', N'王希智', N'男', N'19', N'1', N'111', N'1', N'1', N'6')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'58', N'123123123', N'白宇轩', N'男', N'19', N'1', N'111', N'1', N'1', N'6')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'59', N'123123123', N'蓝硕', N'男', N'19', N'1', N'111', N'1', N'3', N'6')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'60', N'123123123', N'康源浩', N'男', N'19', N'1', N'111', N'1', N'1', N'6')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'61', N'123123123', N'张云鹤', N'男', N'19', N'1', N'111', N'1', N'1', N'6')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'62', N'123123123', N'王浩楠', N'男', N'19', N'1', N'111', N'1', N'1', N'6')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'63', N'123123123', N'毛晟宇', N'男', N'19', N'1', N'111', N'1', N'1', N'6')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'64', N'123123123', N'聂源良', N'男', N'19', N'1', N'111', N'1', N'1', N'6')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'65', N'123123123', N'蔡演秋', N'男', N'19', N'1', N'111', N'1', N'1', N'6')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'66', N'123123123', N'叶信麟', N'男', N'19', N'1', N'111', N'1', N'1', N'6')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'67', N'123123123', N'方铭坚', N'男', N'19', N'1', N'111', N'1', N'1', N'6')
GO
GO
INSERT INTO [dbo].[students] ([id], [students_number], [students_name], [students_sex], [students_age], [students_phone], [qq], [wx], [students_status], [classes_id]) VALUES (N'68', N'121212212', N'陈龙昊', N'男', N'17', N'171717', N'171717', N'171717', N'1', N'2')
GO
GO
SET IDENTITY_INSERT [dbo].[students] OFF
GO

-- ----------------------------
-- Table structure for teachers
-- ----------------------------
DROP TABLE [dbo].[teachers]
GO
CREATE TABLE [dbo].[teachers] (
[id] int NOT NULL IDENTITY(16,1) ,
[teachers_name] nvarchar(8) NOT NULL ,
[teachers_type] int NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[teachers]', RESEED, 17)
GO

-- ----------------------------
-- Records of teachers
-- ----------------------------
SET IDENTITY_INSERT [dbo].[teachers] ON
GO
INSERT INTO [dbo].[teachers] ([id], [teachers_name], [teachers_type]) VALUES (N'1', N'刘亮', N'1')
GO
GO
INSERT INTO [dbo].[teachers] ([id], [teachers_name], [teachers_type]) VALUES (N'2', N'庄德鑫', N'2')
GO
GO
INSERT INTO [dbo].[teachers] ([id], [teachers_name], [teachers_type]) VALUES (N'3', N'刘晓东', N'1')
GO
GO
INSERT INTO [dbo].[teachers] ([id], [teachers_name], [teachers_type]) VALUES (N'4', N'胡振东', N'1')
GO
GO
INSERT INTO [dbo].[teachers] ([id], [teachers_name], [teachers_type]) VALUES (N'5', N'幕裕', N'1')
GO
GO
INSERT INTO [dbo].[teachers] ([id], [teachers_name], [teachers_type]) VALUES (N'6', N'李嘉', N'2')
GO
GO
INSERT INTO [dbo].[teachers] ([id], [teachers_name], [teachers_type]) VALUES (N'10', N'刘云燕', N'2')
GO
GO
INSERT INTO [dbo].[teachers] ([id], [teachers_name], [teachers_type]) VALUES (N'11', N'高倩', N'2')
GO
GO
INSERT INTO [dbo].[teachers] ([id], [teachers_name], [teachers_type]) VALUES (N'12', N'乔伊娜', N'2')
GO
GO
INSERT INTO [dbo].[teachers] ([id], [teachers_name], [teachers_type]) VALUES (N'13', N'朱迪', N'2')
GO
GO
INSERT INTO [dbo].[teachers] ([id], [teachers_name], [teachers_type]) VALUES (N'14', N'李笑航', N'2')
GO
GO
INSERT INTO [dbo].[teachers] ([id], [teachers_name], [teachers_type]) VALUES (N'15', N'杨丹', N'2')
GO
GO
SET IDENTITY_INSERT [dbo].[teachers] OFF
GO

-- ----------------------------
-- Table structure for UserProfile
-- ----------------------------
DROP TABLE [dbo].[UserProfile]
GO
CREATE TABLE [dbo].[UserProfile] (
[Email] nvarchar(4000) NULL ,
[UserId] int NOT NULL IDENTITY(5,1) 
)


GO
DBCC CHECKIDENT(N'[dbo].[UserProfile]', RESEED, 7)
GO

-- ----------------------------
-- Records of UserProfile
-- ----------------------------
SET IDENTITY_INSERT [dbo].[UserProfile] ON
GO
INSERT INTO [dbo].[UserProfile] ([Email], [UserId]) VALUES (N'六六六', N'2')
GO
GO
INSERT INTO [dbo].[UserProfile] ([Email], [UserId]) VALUES (N'123@456.com', N'3')
GO
GO
INSERT INTO [dbo].[UserProfile] ([Email], [UserId]) VALUES (N'123@123.com', N'4')
GO
GO
INSERT INTO [dbo].[UserProfile] ([Email], [UserId]) VALUES (N'aajz@13.com', N'5')
GO
GO
INSERT INTO [dbo].[UserProfile] ([Email], [UserId]) VALUES (N'mmy@mmy.mmy', N'6')
GO
GO
INSERT INTO [dbo].[UserProfile] ([Email], [UserId]) VALUES (N'aajz@163.com', N'7')
GO
GO
SET IDENTITY_INSERT [dbo].[UserProfile] OFF
GO

-- ----------------------------
-- Table structure for Users
-- ----------------------------
DROP TABLE [dbo].[Users]
GO
CREATE TABLE [dbo].[Users] (
[Email] nvarchar(4000) NULL ,
[UserId] int NOT NULL IDENTITY(1,1) 
)


GO

-- ----------------------------
-- Records of Users
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Users] ON
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO

-- ----------------------------
-- Table structure for webpages_Membership
-- ----------------------------
DROP TABLE [dbo].[webpages_Membership]
GO
CREATE TABLE [dbo].[webpages_Membership] (
[UserId] int NOT NULL ,
[CreateDate] datetime NULL ,
[ConfirmationToken] nvarchar(128) NULL ,
[IsConfirmed] bit NULL DEFAULT ((0)) ,
[LastPasswordFailureDate] datetime NULL ,
[PasswordFailuresSinceLastSuccess] int NOT NULL DEFAULT ((0)) ,
[Password] nvarchar(128) NOT NULL ,
[PasswordChangedDate] datetime NULL ,
[PasswordSalt] nvarchar(128) NOT NULL ,
[PasswordVerificationToken] nvarchar(128) NULL ,
[PasswordVerificationTokenExpirationDate] datetime NULL 
)


GO

-- ----------------------------
-- Records of webpages_Membership
-- ----------------------------
INSERT INTO [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (N'3', N'2017-06-12 01:14:07.633', null, N'1', null, N'0', N'ACxFdm9RcThzfw7ZLRm6JT06cT8DSdakHhbiw29OzO0yQT9Y3DlHa5uaiGJXvQ2TXQ==', N'2017-06-12 01:14:07.633', N'', null, null)
GO
GO
INSERT INTO [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (N'5', N'2017-07-15 17:48:48.593', null, N'1', null, N'0', N'AFMdurfEsD8VPj6uxpR2uWLkrlXvIPFQ0F4aHieQMKE+lyopXARM19JY3PXd0NVxzQ==', N'2017-07-15 17:48:48.593', N'', null, null)
GO
GO
INSERT INTO [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (N'6', N'2017-09-18 03:01:57.070', null, N'1', null, N'0', N'AHc1yuSHadBtflm3N6YQ4NtT3LIzu89Tz6wNBmbS4t1zmxF1Yd8byerxDefjge5PlA==', N'2017-09-18 03:01:57.070', N'', null, null)
GO
GO
INSERT INTO [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (N'7', N'2017-11-27 07:15:12.210', null, N'1', null, N'0', N'AERcXhQ/9CL/3g8+cNtuz9kl7E+YNTYgy/S+I3ARaCpwFLyYiA6FRKMPAmKt9gKmww==', N'2017-11-27 07:15:12.210', N'', null, null)
GO
GO

-- ----------------------------
-- Table structure for webpages_OAuthMembership
-- ----------------------------
DROP TABLE [dbo].[webpages_OAuthMembership]
GO
CREATE TABLE [dbo].[webpages_OAuthMembership] (
[Provider] nvarchar(30) NOT NULL ,
[ProviderUserId] nvarchar(100) NOT NULL ,
[UserId] int NOT NULL 
)


GO

-- ----------------------------
-- Records of webpages_OAuthMembership
-- ----------------------------

-- ----------------------------
-- Table structure for webpages_Roles
-- ----------------------------
DROP TABLE [dbo].[webpages_Roles]
GO
CREATE TABLE [dbo].[webpages_Roles] (
[RoleId] int NOT NULL IDENTITY(1,1) ,
[RoleName] nvarchar(256) NOT NULL 
)


GO

-- ----------------------------
-- Records of webpages_Roles
-- ----------------------------
SET IDENTITY_INSERT [dbo].[webpages_Roles] ON
GO
SET IDENTITY_INSERT [dbo].[webpages_Roles] OFF
GO

-- ----------------------------
-- Table structure for webpages_UsersInRoles
-- ----------------------------
DROP TABLE [dbo].[webpages_UsersInRoles]
GO
CREATE TABLE [dbo].[webpages_UsersInRoles] (
[UserId] int NOT NULL ,
[RoleId] int NOT NULL 
)


GO

-- ----------------------------
-- Records of webpages_UsersInRoles
-- ----------------------------

-- ----------------------------
-- Indexes structure for table classes
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table classes
-- ----------------------------
ALTER TABLE [dbo].[classes] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table courses
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table courses
-- ----------------------------
ALTER TABLE [dbo].[courses] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table exams
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table exams
-- ----------------------------
ALTER TABLE [dbo].[exams] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table joke
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table joke
-- ----------------------------
ALTER TABLE [dbo].[joke] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table library_books
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table library_books
-- ----------------------------
ALTER TABLE [dbo].[library_books] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table library_borrowhistory
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table library_borrowhistory
-- ----------------------------
ALTER TABLE [dbo].[library_borrowhistory] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table library_borrowing
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table library_borrowing
-- ----------------------------
ALTER TABLE [dbo].[library_borrowing] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table library_collections
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table library_collections
-- ----------------------------
ALTER TABLE [dbo].[library_collections] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table log
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table log
-- ----------------------------
ALTER TABLE [dbo].[log] ADD PRIMARY KEY ([Id])
GO

-- ----------------------------
-- Indexes structure for table majors
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table majors
-- ----------------------------
ALTER TABLE [dbo].[majors] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table mycart
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table mycart
-- ----------------------------
ALTER TABLE [dbo].[mycart] ADD PRIMARY KEY ([cartid])
GO

-- ----------------------------
-- Indexes structure for table scores
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table scores
-- ----------------------------
ALTER TABLE [dbo].[scores] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table students
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table students
-- ----------------------------
ALTER TABLE [dbo].[students] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table teachers
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table teachers
-- ----------------------------
ALTER TABLE [dbo].[teachers] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table UserProfile
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table UserProfile
-- ----------------------------
ALTER TABLE [dbo].[UserProfile] ADD PRIMARY KEY ([UserId])
GO

-- ----------------------------
-- Indexes structure for table Users
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table Users
-- ----------------------------
ALTER TABLE [dbo].[Users] ADD PRIMARY KEY ([UserId])
GO

-- ----------------------------
-- Indexes structure for table webpages_Membership
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table webpages_Membership
-- ----------------------------
ALTER TABLE [dbo].[webpages_Membership] ADD PRIMARY KEY ([UserId])
GO

-- ----------------------------
-- Indexes structure for table webpages_OAuthMembership
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table webpages_OAuthMembership
-- ----------------------------
ALTER TABLE [dbo].[webpages_OAuthMembership] ADD PRIMARY KEY ([Provider], [ProviderUserId])
GO

-- ----------------------------
-- Indexes structure for table webpages_Roles
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table webpages_Roles
-- ----------------------------
ALTER TABLE [dbo].[webpages_Roles] ADD PRIMARY KEY ([RoleId])
GO

-- ----------------------------
-- Uniques structure for table webpages_Roles
-- ----------------------------
ALTER TABLE [dbo].[webpages_Roles] ADD UNIQUE ([RoleName] ASC)
GO

-- ----------------------------
-- Indexes structure for table webpages_UsersInRoles
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table webpages_UsersInRoles
-- ----------------------------
ALTER TABLE [dbo].[webpages_UsersInRoles] ADD PRIMARY KEY ([UserId], [RoleId])
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[webpages_UsersInRoles]
-- ----------------------------
ALTER TABLE [dbo].[webpages_UsersInRoles] ADD FOREIGN KEY ([RoleId]) REFERENCES [dbo].[webpages_Roles] ([RoleId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[webpages_UsersInRoles] ADD FOREIGN KEY ([UserId]) REFERENCES [dbo].[UserProfile] ([UserId]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
