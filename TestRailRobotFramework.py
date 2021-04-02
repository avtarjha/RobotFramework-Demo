from testrail import *

class TestRailRobotFramework():
    def post_attachment_to_testrail(self, run_id, file_path, base_url, username, password, api_method):
        """
        Utilises TestRails python binding to upload file as an attachment


        |   ``run_id``     |   Run id for TestRail                                                                                                                                                                                     |
        |   ``file_path``  |   Complete file path including name and extension as a string                                                                                                                                             |
        |   ``base_url``   |   BaseURL for testRail. This should be same as TestRail address  you also use to access TestRail with your web browser. For example - https://<your-name>.testrail.com/ or http://<server>/testrail/      |
        |   ``username``   |   Testrail username                                                                                                                                                                                       |
        |   ``password``   |   Testrail password                                                                                                                                                                                       |
        |   ``api_method`` |   Test rail api method. For example - add_attachment_to_case, add_attachment_to_run. Refer https://www.gurock.com/testrail/docs/api/reference/attachments for API references.                             |

        """
        client = APIClient("{}".format(base_url))
        client.user = "{}".format(username)
        client.password = "{}".format(password)
        return client.send_post("{}/{}".format(api_method,run_id), "{}".format(file_path))